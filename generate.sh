script='./python/generate.py'
grammar='./content/grammar.txt'
assets='./content/asset_lib.txt'
template='./content/template.txt'
output='output.txt'
#dir='./profiles/'

rm $output

#for file in $dir*_grammar.txt;
#do

python $script $grammar $assets $template >> $output

#done	