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

#############################################################################################################################
#EXERCISE 2: mv, rm, glob matching {}, brace expansion []
#1.    Navigate to the 'zombie' folder. Stay in the zombie folder throughout this exercise.
cd ~/films/horror/zombie

#2.    Move 'predator' from the 'slasher' folder to the 'action' folder.
mv ../slasher/predator ~/films/action

#3.    Rename 'rambo' to 'firstBlood'.
mv ~/films/action/rambo ~/films/action/firstBlood

#4.    Create a sub-folder within comedy called 'supernaturalComedy'.
mkdir ~/films/comedy/supernaturalComedy

#5.    Using only one command, move both 'Ghostbusters' films into the new folder.
mv ~/films/comedy/ghostbusters* ~/films/comedy/supernaturalComedy

#6.    Delete 'bigMommasHouse' in interactive mode.
rm -i ~/films/comedy/bigMommasHouse

#7.    With a single command, create ‘rockyI’, ‘rockyII’, … ‘rockyV’ in the action folder.
touch ~/films/action/rocky{I,II,III,IV,V}

#if you do:
tree ~/films
#you should get something like this:

 /home/first.last/films
 ├── action
 │   ├── firstBlood
 │   ├── predator
 │   ├── rockyI
 │   ├── rockyII
 │   ├── rockyIII
 │   ├── rockyIV
 │   └── rockyV
 ├── comedy
 │   ├── bigMommasHouse
 │   ├── shawnOfTheDead
 │   └── supernaturalComedy
 │       ├── ghostbusters
 │       └── ghostbusters2
 └── horror
     ├── slasher
     │   ├── fridayThe13th
     │   └── halloween
     ├── theHowling
     └── zombie
         └── dawnOfTheDead

#############################################################################################################################
#EXERCISE 3: vi/vim/text editor of your choice

keystrokes:
i -lowercase i: insert mode starting before whatever character your cursor is highlighting
I -uppercase i: insert mode starting at the start of the line
dw: delete everything starting at the highlighted character to the next space. 
	e.g. "bob was here?", if i highlight 'a' and press dw, i would get "bob where?"
dd: delete entire row, including new line character
D: delete everything starting at and after highlighted character
p: puts a copy of whatever you deleted last, NOT UNDO!!
	e.g. "bob was here?", press D at 'b' and delete whole line, then p anywhere and it will print "bob was here?" wherever you are highlighted
x, or nx: delete highlighted character, or n characters including highlighted
o: inserts a new line, then insert mode starting on next line
O: inserts a new line, then insert mode starting on current line
A: insert mode starting at the end of the line
ZZ: write file and quit

#Use vi to create the ‘accounts’ file:

PIN534:Sheldon Cooper:1:1024
PIN756:Leonard Hofstadter:2:620
PIN769:Howard Wolowitz:4:213
PIN210:Rajesh Koothrappali:3:556

...idk just go into vi, press a/i/I/O/o/A/whatever the hell you want and type that shit in

#############################################################################################################################
#EXERCISE 4: wc, fgrep, cut, sort
