# CISC3140Lab3Task1
use AWK to write a Script analyzing a CSV file
use makefile to run the script

## Introduction

In this project I create a zsh shell script to understand data that is dowloaded. In order to execute the script easily I created a makefile which actually downloads the data and executes the script, using a makefile makes the execution of the shell easier through one command in the terminal.<br></br>
This repository allows us to use a makefile to dowload a `.csv` file containing information about NYC inmates discharged from prison in 2018 and run a shell script which uses AWK commands to analyze the information about the inmates. <br></br>

The shell script 
- calculates the amount of discharged prisoners according to gender 
- calculates the amount of discharged prisoners according to age
- calculates the average age of the discharged prisoners
- prints all this information to a new file  

This raw data is downloaded from [NYCOpenData](https://data.cityofnewyork.us/Public-Safety/Inmate-Discharges/94ri-3ium). 

## How To Use
*please be sure that curl is installed on your computer before doing this exercize*

1. Open the terminal
2. Be sure that you are in the file you would like to clone the repository into, if you are not- `cd` into the appropriate file
3. Clone this repo by typing in terminal: `git clone https://github.com/RachMink/CISC3140Lab3Task1.git`
4. after cloning direct yourself into the proper folder using `cd CISC3140Lab3Task1`
5. use the `ls` command to see that your folder contains `README.md` `makefile` and `nycScript.sh`  
6. run command `make`
7. now if you `ls` you should have two extra files called `inmateFile.csv` which contains the original data used and `newFile.csv` which contains the filtered data
8. if you would like to only use the terminal in this exercize you can type `cat newFile.csv` which should print the amount of inmates discharged per gender and age, otherwise you should be able to open a `.csv` file through your finder on your pc 

#### `inmateFile.csv`
<img width="751" alt="Screen Shot 2021-07-29 at 8 36 08 AM" src="https://user-images.githubusercontent.com/82296790/127492740-ebcbb8c4-d03f-43ba-b25f-eb0b8faac348.png">

#### `newFile`
<img width="670" alt="Screen Shot 2021-07-29 at 8 34 42 AM" src="https://user-images.githubusercontent.com/82296790/127492544-d19a0bfc-5e88-45c0-99bb-03b96c888f97.png">

##### Notes
- please look at comments in script to understand how the script works
- any blank spots in the output file are because these feilds were not specified in the input file
