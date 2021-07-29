#this line allows us to delete the first line of the downloaded file
#as it is the header and should not be mixed in with the data
sed -i '' -e '1d' inmateFile.csv


#sorts and prints the amounts of each unique gender
awk -F "\"*,\"*" '{print "Inmates gender assigned: " $5}' inmateFile.csv | sort | uniq -c > newFile.csv


#numerically sorts and prints the amount of occurences of each age
awk -F "\"*,\"*" '{print "Inmate(s) at age: " $6}' inmateFile.csv | sort -n | uniq -c  >> newFile.csv


#calculates the average age of discharged prisoners using the age column
awk -F "\"*,\"*"  '{sum+=$6} END {print "Average Age: " sum/NR}' inmateFile.csv >> newFile.csv
 
