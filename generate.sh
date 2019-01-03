dir='./profiles/'
script='generate.py'
output='output.txt'

rm $output

for file in $dir*_grammar.txt;
do
	python $script $file >> $output
done	