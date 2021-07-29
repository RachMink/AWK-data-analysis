sed -i '' -e '1d' inmateFile.csv

awk -F "\"*,\"*" '{print "Inmates gender assigned: " $5}' inmateFile.csv | sort | uniq -c > newFile.csv

awk -F "\"*,\"*" '{print "Inmate(s) at age: " $6}' inmateFile.csv | sort -n | uniq -c  >> newFile.csv

awk -F "\"*,\"*"  '{sum+=$6} END {print "Average Age: " sum/NR}' inmateFile.csv >> newFile.csv
 
