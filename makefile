default:
	#downloads the file to inmateFile.csv
	curl -o inmateFile.csv https://data.cityofnewyork.us/resource/94ri-3ium.csv
	
	#make script executable
	chmod 755 nycScript.sh
	
	#run script
	./nycScript.sh
	
