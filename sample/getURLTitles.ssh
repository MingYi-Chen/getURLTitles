#!/bin/bash
echo -n "Enter input file > "
read inputfile
echo -n "output file > "
read outputfile
printf "" > $outputfile
while IFS='' read -r line || [[ -n "$line" ]]; do
	printf "[" >> $outputfile;
	wget -qO- $line | perl -l -0777 -ne 'printf $1 if /<title.*?>\s*(.*?)\s*<\/title/si' >> $outputfile
	printf "]($line)" >> $outputfile;
	printf "\n" >> $outputfile;
done < "$inputfile"





