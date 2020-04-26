#!/bin/bash
ls -lR ~ >> script_4_8_1_output.txt
sed 's/denis/sined/g' script_4_8_1_output.txt >> script_4_8_2a_output.txt
awk '{gsub("sined","utest"); print }' script_4_8_2a_output.txt >> script_4_8_2b_output.txt
sed "/total/d" script_4_8_2b_output.txt >> script_4_8_3_output.txt

grep -o "[[:alpha:]]*[[:space:]]*[[:digit:]]*[[:space:]][[:digit:]]*[:][[:digit:]]*[[:space:]]*[[:alnum:]|[:punct:]]*" script_4_8_3_output.txt >> script_4_8_4_output_v1.txt
awk '{print $6, $7, $8, $9}' script_4_8_3_output.txt >> script_4_8_4_output_v2.txt

awk '{print $4}' script_4_8_4_output_v1.txt | grep "[[:alnum:]|[:punct:]]*[[:digit:]][[:alpha:]]*" >> script_4_8_5_output_v1.txt
awk '$4 ~/[0-9]/ {print $4}' script_4_8_4_output_v2.txt >> script_4_8_5_output_v2.txt

awk '{print $4}' script_4_8_4_output_v1.txt | grep "[[:punct:]][[:alpha:]]*\b" >> script_4_8_6_output_v1.txt
awk '$4 ~/\./ {print $4}' script_4_8_4_output_v2.txt >> script_4_8_6_output_v2.txt
exit 0



