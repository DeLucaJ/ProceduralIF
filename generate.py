import sys
import re
import random
from string import Template

# Constants
GRAMMAR_TERM = r"\S*"	# Regular Expression for terms in grammar
NON_TERMINAL = r"\$\S*"	# Regular Expression for non_terminal in template form

class grammar(dict):
    '''
    Modification of dictionary
	Allows the return of a random single item in a key list.
    '''
    def __getitem__(self, key):
        return random.choice(super(rdict, self).__getitem__(key))

    def getList(self, key):
        return super(rdict, self).__getitem__(key)

def grammar_to_template(line):
	'''
	Takes in a grammar string and makes it into string template format
	@param line:	a string in grammar format
	@return tline: 	line in template format
	'''
	pass

def parse(file):
	'''
	Parses a file and outputs the grammar as a dictionary

	@param file:	an open file
	@return: 		a dictionary(grammar) and a string (start_key) variable
	'''
	grammar = dict()
	start_key = ""

	#convert each line of the file into a dictionary entry
	lines = file.readlines()

	for line in lines:
		line = line.strip()

		#should probably throw an error when true
		if (len(line) < 3) or (line[0] == '#') or ("::=" not in line):
			continue

		item = line.split("::=")

		# add key to dictionary
		# If its the first, make it the start_key
		key = item[0].strip()
		if not start_key:
			start_key = key
		if key not in gramar.keys():
			grammar[key] = list()

		# convert values, delimit by '|'
		values = grammar_to_template(item[1].strip())
		values = values.split("|")
		
		# add values to grammar
		for value in values:
			value = value.strip()
			grammar[key].append(value)

	return (grammar, start_key)

def interpret(grammar, start_key):
	'''
	Takes a dictionary grammar and turns it into a string of Inform7 code

	@param grammar: a dictionary grammar (should have start_key)
	@return: 		a string to be placed in Inform7
	'''
	# initialize profile as the first line of the grammar
	profile = grammar[start_key].copy()

	# Loop until there are no more non-terminals
	while re.search(NON_TERMINAL, profile)
		#likely needs mitches structure
		t = Template(profile).substitute(grammar)

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
	if len(sys.argv) < 2
		print("No files provided. Looking for default, 'grammar.txt'")
		files.append("grammar.txt")
	else 
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
	for grammar in grammars
		profiles.append(interpret(grammar[0], grammar[1]))

	# put profiles into and Inform7 file

if __name__ == '__main__':
	main()