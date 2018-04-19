# tab-join and shuffle et and en corpora

for f in mixed-data.both
do
../OpenNMT-py/tools/tokenizer.perl < $f > tok-$f
done


../mosesdecoder/scripts/recaser/train-truecaser.perl --model both-truecase.mdl --corpus tok-mixed-data.both



for f in mixed-data.both
do
../mosesdecoder/scripts/recaser/truecase.perl --model both-truecase.mdl <tok-$f > tc-tok-$f
done

