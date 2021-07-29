default:
	curl -o inmateFile.csv https://data.cityofnewyork.us/resource/94ri-3ium.csv
	chmod 755 nycScript.sh
	./nycScript.sh
	
