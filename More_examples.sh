#These are from Core - UNIX Foundation Exercisebook file on the trainee website

#To copy and paste any of this code, just copy, and right click into your putty to paste
#Obviously these are not the only way to do things
#If you see mistakes, let me know!
#yoloswag420blazeitup
#############################################################################################################################
#EXERCISE 1: File Systems
#These can be done from anywhere in your session
Perform the following tasks
1.	Create a directory in your home directory called tradingSystem.
2.	Create 2 files in your home directory called countries and places.
3.	Move the countries file to your tradingSystem directory.
Rename the places file with a new name of cities
Copy the cities file to your tradingSystem directory
4.	Create a file called myProgram in your home directory.
Look at the permissions on myProgram.
Change the permissions on myProgram to -rwxr-x--x 
5.	Create a directory called temp. 
Copy your myProgram into temp.
Delete the temp directory and all its contents.
6.	Identify the type of contents held in the following files using the file command
/etc/hosts
/dev/fd0
/dev/tty0
/bin/touch
7.	Copy all the files from /student_files which end in .dat to your tradingSystem directory
8.	Copy the directories day1 and day2 and their contents, from /student_files into your home directory.

9.	Move into your tradingSystem directory. Identify the biggest file in this directory.
10.	Display the last 2 lines of the places.dat file and the first 5 lines of the companies.dat file.


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
