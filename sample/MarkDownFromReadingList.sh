#!/bin/bash
./readinglisturls.py > ReadingList.txt

inputfile="ReadingList.txt"

DATE=$(date +%Y%m%d)

outputfile="OutputReadingList_$DATE.md"
oriOutput="tmp.md"  
encOutput="encode.md"
printf "" > $outputfile
while IFS='' read -r line || [[ -n "$line" ]]; do
	printf "."
	printf "* [" >> $outputfile;
	wget -qO- $line | perl -l -0777 -ne 'printf $1 if /<title.*?>\s*(.*?)\s*<\/title/si' > $oriOutput
	
	#for gb2312 	
	if iconv -f cp936 -t utf-8 $oriOutput > $encOutput ; then 		
		cat $encOutput >> $outputfile
	else 
		cat $oriOutput >> $outputfile;
	fi
	printf "](%s)" $line >> $outputfile;
	printf "\n" >> $outputfile;
done < $inputfile
printf "Complete!!"



rm ReadingList.txt



