import sys
import re
import random
from string import Template

# Constants
GRAMMAR_TERM = r"<\S*>"	# Regular Expression for terms in grammar
NON_TERMINAL = r"\$\S*"	# Regular Expression for non_terminal in template form

class gdict(dict):
    '''
    Modification of dictionary
	- Allows the return of a random single item in a key list.
	- Useful for random generation using string templates
    '''
    def __getitem__(self, key):
        return random.choice(super(gdict, self).__getitem__(key))

    def getList(self, key):
        return super(gdict, self).__getitem__(key)

def grammar_to_template(line):
	'''
	Takes in a grammar string and makes it into string template format
	@param line:	a string in grammar format
	@return tline: 	line in template format
	'''
	tline = line[:]
	to_replace = re.findall(GRAMMAR_TERM, line)
	
	for item in to_replace:
		tform = '$' + item[1:-1]
		tline = tline.replace(item, tform)

	return tline

def read_declaration(file):
	'''
	Takes in a file and returns a declaration string from the grammar
	Throws error when file is not properly formatted 
	@param file: 	the file to be read
	@return declaration: the string containing the declaration
	'''
	decl = ""

	while (not decl.endswith("}")):
		#read input
		char = file.read(1)

		if not char:
			break

		decl += char

	return decl

def read_declarations(file):
	'''
	Reads all the declarations in a file
	@param file: the file to be read
	@return declarations: a list of strings formatted as declarations
	'''
	decls = list()

	while True:
		decl = read_declaration(file)
		if not decl:
			break
		decls.append(decl)

	return decls

def parse(file):
	'''
	Parses a file and outputs the grammar as a dictionary

	@param file:	an open file
	@return: 		a dictionary(grammar) and a string (start_key) variable
	'''
	grammar = gdict()
	start_key = ""

	# grab declarations and convert into grammar entry
	decls = read_declarations(file)

	for decl in decls:
		decl = decl.strip()

		# check format (could probably get more technical)
		if (not decl.endswith("}")) or ("::=" not in decl):
			print("Grammar improperly formatted", file=sys.stderr)
			sys.exit(1)

		# split key and values
		item = decl.split("::=")

		# add key to grammar entry
		# If its the first, make it the start_key
		key = item[0].strip()
		if not start_key:
			start_key = key
		if key not in grammar.keys():
			grammar[key] = list()

		# convert values, delimit by '|'
		values = grammar_to_template(item[1].strip('{}\t\n \r\v'))
		values = values.split("|")

		# add values to grammar
		for value in values:
			value = value.strip()
			grammar.getList(key).append(value)

	return (grammar, start_key)

def interpret(grammar, start_key):
	'''
	Takes a dictionary grammar and turns it into a string of Inform7 code

	@param grammar: 	a dictionary grammar
	@paran start_key:	the key that begins the grammar
	@return: 			a string to be placed in Inform7
	'''
	# initialize profile as the first line of the grammar
	profile = grammar[start_key][:]

	# Loop until there are no more non-terminals
	while re.search(NON_TERMINAL, profile):
		#likely needs mitches structure
		profile = Template(profile).substitute(grammar)

	return profile

def main():
	'''
	Opens the given file names,
	parses them into grammars,
	interprets grammars into Inform7 code,
	outputs an Inform7 file
	'''
	files = []
	grammars = []
	profiles = []

	# parse arguments 
	if len(sys.argv) < 2:
		print("No files provided. Looking for default, 'grammar.txt'")
		files.append("grammar.txt")
	else: 
		# add all arguments to list of files
		for arg in sys.argv[1:]:
			files.append(arg)

	# parse all files into grammars
	for file in files:
		# make sure the file exists
		try:
			f = open(file, "r")
		except:
			print("'" + file + "' not found")
			continue #sys.exit()

		grammar = parse(f)
		grammars.append(grammar)

		f.close()

	# turn grammars into profiles
	for grammar in grammars:
		profiles.append(interpret(grammar[0], grammar[1]))

	# put profiles into and Inform7 file
	for profile in profiles:
		print(profile)

if __name__ == '__main__':
	main()