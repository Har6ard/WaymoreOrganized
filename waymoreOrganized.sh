#!/bin/bash

echo "USAGE: ./waymoreOrganized.sh {{Waymore Output}}"
key_words_file='./KeyWords.txt'

header="Key Word,URL"
echo "$header" > data.csv

while IFS= read -r line; do
    #echo $line
    grep -E -w '.*'$line $1 | while IFS= read lines;do
    echo "$line,$lines" >> data.csv
    done


done < "$key_words_file"
