import sys
import re
import random
import string

#Constants
CONTENT_DIR = "./content/"
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

def parse_grammar(gfile):
	'''
	Parses a file and outputs the grammar as a dictionary

	@param file:	an open file
	@return: 		a grammar dictionary and a string (start_key) variable
	'''
	grammar = gdict()
	start_key = ""

	line = gfile.readline()
	while (line != ""):
		line = line.strip()
		
		# Check format
		if ("=>" not in line):
			print("Grammar improperly formatted", file=sys.stderr)
			sys.exit(1)

		# split key and values
		item = line.split("=>")

		# add key to grammar
		# 	If it is the first key, make it the start_key
		key = item[0].strip()
		if not start_key:
			start_key = key
		if key not in grammar.keys():
			grammar[key] = list()

		# delimt by '|'
		values = grammar_to_template(item[1].strip())
		values = values.split("|")

		# add values to grammar
		for value in values:
			value = value.strip()
			grammar.getList(key).append(value)

		line = gfile.readline()

	return (grammar, start_key)

def parse_assets(afile):
	'''
	Parses a file and outputs the assets as a dicitonary

	@param file:	an open file
	@return: 		a asset dictionary
	'''
	assets = dict()

	line = afile.readline()
	while (line != ""):
		line = line.strip()

		# check format
		if ("=:" not in line):
			print("Asset Lib improperly formated")
			sys.exit()
		
		# split key and values
		item = line.split("=:")

		#add key to assets
		key = item[0].strip()
		asset = item[1].strip()
		if (";" in asset): 
			asset = "\t" + asset
		assets[key] = asset

		line = afile.readline()

	return assets

def interpret_grammar(grammar, start_key, assets):
	'''
	Takes a dictionary grammar and turns it into a string of Inform7 code

	@param grammar: a grammar dictionary
	@param start_key: the beginning key in the grammar
	@param assets: an asset dictionary

	@return: a string of output 
	'''
	output = grammar[start_key][:]
	
	while re.search(NON_TERMINAL, output):
		output = string.Template(output).substitute(grammar)

	output = output.split()

	# replace terminals (hopefully \n delimitted) with corresponding assets 
	replaced = ""
	for item in output:
		replaced += assets[item] + "\n"

	return replaced

def fill_template(tfile, anchor):
	'''
	Fills the template using 

	@param tfile: the template file
	@param grammar: the grammar with asset keys
	@param assets: the asset dictionary

	@return filled template
	'''
	output = ""

	# put entire tfile into output
	output = tfile.read()

	# put the grammar into the template
	output = string.Template(output).substitute(anchor)

	return output	

def main():
	g = ""
	a = ""
	t = ""

	# process arguments PROBABLY NEEDS WORK
	if len(sys.argv) != 4:
		print("Improper number of files.")
		print("Looking for 'template.txt', 'asset_lib.txt', and 'grammar.txt'")
		g = CONTENT_DIR + "grammar.txt"
		a = CONTENT_DIR + "asset_lib.txt"
		t = CONTENT_DIR + "template.txt"
	else: 	
		# add all arguments to list of files
		g = sys.argv[1]
		a = sys.argv[2]
		t = sys.argv[3]
		

	# parse file into grammar
	try:
		gfile = open(g, "r")
	except:
		print("Grammar definition '" + g + "' not found", file=sys.stderr)
		sys.exit()

	grammar = parse_grammar(gfile)
	gfile.close()

	# parse asset library
	try:
		afile = open(a, "r")
	except:
		print("Asset Library '" + a + "' not found.", file=sys.stderr)
		sys.exit()

	assets = parse_assets(afile)
	afile.close()

	# fill template
	try:
		tfile = open(t, "r")
	except:
		print("Template file '" + t + "' not found.", file=sys.stderr)
		sys.exit()

	anchor = dict()

	anchor["anchor"] = interpret_grammar(grammar[0], grammar[1], assets)

	output = fill_template(tfile, anchor)
	tfile.close

	# output the string
	print(output)

if __name__ == '__main__':
	main()