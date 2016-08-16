#!/bin/bash
./readinglisturls.py > ReadingList.txt

inputfile="ReadingList.txt"
outputfile="OutputReadingList.md"
printf "" > $outputfile
while IFS='' read -r line || [[ -n "$line" ]]; do
	printf "."
	printf "* [" >> $outputfile;
	wget -qO- $line | perl -l -0777 -ne 'printf $1 if /<title.*?>\s*(.*?)\s*<\/title/si' >> $outputfile
	printf "]($line)" >> $outputfile;
	printf "\n" >> $outputfile;
done < $inputfile
printf "Complete!!"

rm ReadingList.txt



