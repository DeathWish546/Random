#These are from Core - UNIX Foundation Exercisebook file on the trainee website

#To copy and paste any of this code, just copy, and right click into your putty to paste
#Obviously these are not the only way to do things
#If you see mistakes, let me know!
#yoloswag420blazeitup
#############################################################################################################################
#EXERCISE 1: File Systems
#These can be done from anywhere in your session
#Perform the following tasks
#1. Create a directory in your home directory called tradingSystem.
mkdir ~/tradingSystem

#2. Create 2 files in your home directory called countries and places.
touch ~/countries ~/places

#3. Move the countries file to your tradingSystem directory.
mv ~/countries ~/tradingSystem
	#Rename the places file with a new name of cities
mv ~/places ~/cities
	#Copy the cities file to your tradingSystem directory
mv ~/cities ~/tradingSystem
	
#4. Create a file called myProgram in your home directory.
touch ~/myProgram
	#Look at the permissions on myProgram.
ls -l ~/myProgram

#OUTPUT:
-rw-r--r-- ... /home/first.last/myProgram

	#Change the permissions on myProgram to -rwxr-x--x 
chmod 751 ~/myProgram

#5. Create a directory called temp. 
mkdir ~/temp
	#Copy your myProgram into temp.
cp ~/myProgram ~/temp
	#Delete the temp directory and all its contents.
rm -r ~/temp

#6. Identify the type of contents held in the following files using the file command
	#/etc/hosts
file /etc/hosts
#OUTPUT:
/etc/hosts: ASCII text
	#/dev/fd0
file /dev/fd0
#OUTPUT:
/dev/fd0: block special
	#/dev/tty0
file /dev/tty0
#OUTPUT:
/dev/tty0: character special
	#/bin/touch
file /bin/touch
#OUTPUT:
/bin/touch: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), dynamically linked (uses shared libs), for GNU/Linux 2.6.24, BuildID[sha1]=0x5b012754bd3bc1da413af234f582fc3f6b4ac627, stripped

#7. Copy all the files from /student_files which end in .dat to your tradingSystem directory
cp /student_files/*.dat ~/tradingSystem

#8. Copy the directories day1 and day2 and their contents, from /student_files into your home directory.
cp -r /student_files/day{1,2} ~/tradingSystem

#9. Move into your tradingSystem directory. Identify the biggest file in this directory.
cd ~/tradingSystem
ls -lS

#OUTPUT: (look at first file, ignore all the 4096 values which are directories, if you want files only, pipe it to egrep "^-[a-zA-Z0-9]*"
total 48
...
-rwxr-x--- ...  828 ... trades.dat
...


#10. Display the last 2 lines of the places.dat file and the first 5 lines of the companies.dat file.
tail -2 ~/tradingSystem/places.dat; head -5 ~/tradingSystem/companies.dat

#OUTPUT:
5:Sydney:Australia
6:Moscow:Russia
id companyName placeId
1:British Airways:1
2:The New York Times:3
3:Toyota:3
4:BNP Paribas:2

tree ~/tradingSystem #should give you:
/home/first.last/tradingSystem
├── broker_exchange.dat
├── brokers.dat
├── cities
├── companies.dat
├── countries
├── currency.dat
├── day1
│   ├── batchprog
│   ├── bpresults
│   ├── etcfiles2
│   ├── etcpfiles
│   ├── filelist
│   ├── grepFile
│   ├── module6
│   │   ├── grep
│   │   │   └── grep.txt
│   │   └── logs
│   │       └── cron
│   ├── module7
│   │   ├── counterfile
│   │   └── job-control
│   ├── names
│   ├── stdin-example
│   └── uniqFile
├── day2
│   └── script_samples
│       ├── layout
│       ├── script1
│       ├── script10
│       ├── script11
│       ├── script12
│       ├── script2
│       ├── script3
│       ├── script4
│       ├── script5
│       ├── script6
│       ├── script6a
│       ├── script6b
│       ├── script7
│       ├── script7a
│       ├── script8
│       ├── script8a
│       ├── script9
│       └── words
├── places.dat
├── shareHolders.dat
├── shares.dat
├── stockExchanges.dat
├── trades.dat
└── transactionType.dat


#############################################################################################################################
#EXERCISE 2: mv, rm, glob matching {}, brace expansion []
