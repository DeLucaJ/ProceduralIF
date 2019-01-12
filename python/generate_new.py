import sys
import re
import random
from string import Template

#Constants
content_dir = "./content/"

def parse_grammar(gfile):
	pass

def parse_assets(afile):
	pass

def fill_grammar(grammar, assets):
	pass

def fill_template(tfile, fgrammar):
	pass

def main():
	g = ""
	a = ""
	t = ""

	# process arguments PROBABLY NEEDS WORK
	if len(sys.argv) != 4:
		print("Improper number of files. Looking for defaults,'template.txt', 'asset_lib.txt', and 'grammar.txt'")
		g = content_dir + "grammar.txt"
		a = content_dir + "asset_lib.txt"
		t = content_dir + "template.txt"
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
		afile = open(a)
	except:
		print("Asset Library '" + a + "' not found.", file=sys.stderr)
		sys.exit()

	assets = parse_assets(afile)
	afile.close()

	# fill grammars with asset library
	fgrammar = (fill_grammar(grammar, assets))

	# fill template
	try:
		tfile = open(t)
	except:
		print("Template file '" + t + "' not found.", file=sys.stderr)
		sys.exit()

	output = fill_template(tfile, fgrammar)
	tfile.close

	# output the string
	print(output)

if __name__ == '__main__':
	main()