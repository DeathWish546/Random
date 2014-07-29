#To copy and paste any of this code, just copy, and right click into your putty to paste
#Obviously these are not the only way to do things
#If you see mistakes, let me know!
#yoloswag420blazeitup
#############################################################################################################################
#EXERCISE 1: mkdir, touch, ls, cd, tree
#These can be done from anywhere in your session
mkdir ~/films
mkdir ~/films/horror ~/films/comedy ~/films/action
mkdir ~/films/horror/zombie ~/films/horror/slasher
touch ~/films/horror/theHowling
touch ~/films/horror/zombie/dawnOfTheDead
touch ~/films/horror/slasher/halloween ~/films/horror/slasher/fridayThe13th ~/films/horror/slasher/predator
touch ~/films/comedy/bigMommasHouse ~/films/comedy/ghostbusters ~/films/comedy/ghostbusters2 ~/films/comedy/shawnOfTheDead
touch ~/films/action/rambo 

#if you do:
tree ~/films
#you should get something like this:

/home/first.last/films
├── action
│   └── rambo
├── comedy
│   ├── bigMommasHouse
│   ├── ghostbusters
│   ├── ghostbusters2
│   └── shawnOfTheDead
└── horror
    ├── slasher
    │   ├── fridayThe13th
    │   ├── halloween
    │   └── predator
    ├── theHowling
    └── zombie
        └── dawnOfTheDead

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
 │   ├── firstBlood
 │   ├── predator
 │   ├── rockyI
 │   ├── rockyII
 │   ├── rockyIII
 │   ├── rockyIV
 │   └── rockyV
 ├── comedy
 │   ├── bigMommasHouse
 │   ├── shawnOfTheDead
 │   └── supernaturalComedy
 │       ├── ghostbusters
 │       └── ghostbusters2
 └── horror
     ├── slasher
     │   ├── fridayThe13th
     │   └── halloween
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

#1. Count the number of characters in the ‘accounts’ file.
wc -m accounts
#OUTPUT: 
123 accounts

#2. Count the number of words in the ‘accounts’ file.
wc -w accounts
#OUTPUT: 
8 accounts

#3. Count the number of lines in the ‘accounts’ file.
wc -l accounts
#OUTPUT:
4 accounts

#4. Display the line containing ‘Sheldon Cooper’.
fgrep "Sheldon Cooper" accounts
#OUTPUT:
PIN534:Sheldon Cooper:1:1024

#5. Display the account that has id of 3. (tip: look for ":3:")
fgrep ":3:" accounts
#OUTPUT:
PIN210:Rajesh Koothrappali:3:556

#6. Display the account with a balance of 620.
fgrep ":620" accounts
#OUTPUT:
PIN756:Leonard Hofstadter:2:620

#7. Retrieve and display the name of every person represented in the ‘accounts’ file.
cut -d ":" -f2 accounts
#OUTPUT:
Sheldon Cooper
Leonard Hofstadter
Howard Wolowitz
Rajesh Koothrappali

#8. Retrieve the pin numbers for every person represented in the ‘accounts’ file.
cut -d ":" -f3 accounts
#OUTPUT:
1
2
4
3

#9. Retrieve the balance and the real name for every person in the ‘accounts’ file.
cut -d ":" -f2,4 accounts
#OUTPUT:
Sheldon Cooper:1024
Leonard Hofstadter:620
Howard Wolowitz:213
Rajesh Koothrappali:556

#10. Display the entries in the ‘accounts’ file sorted by account balance in descending order.
sort -t":" -nrk4 accounts

#OUTPUT:
PIN534:Sheldon Cooper:1:1024
PIN756:Leonard Hofstadter:2:620
PIN210:Rajesh Koothrappali:3:556
PIN769:Howard Wolowitz:4:213

#############################################################################################################################
#EXERCISE 5a: chmod

Create a regular file and run through the following steps:
touch phallic_object

1. Alter permissions using chmod so that you have full access to the file and nobody else has any access. Verify that this has worked.
chmod 700 phallic_object #too lazy to do the chmod agou += crap

ls -l phallic_object 
#OUTPUT:
-rwx------ ... phallic_object

2. Give yourself read-write access, the files group read access only and no access to anyone else.
chmod 640 phallic_object 

ls -l phallic_object 
#OUTPUT:
-rw-r-----  ... phallic_object

3. Give yourself read-execute access, and execute only access to all others.
chmod 511 phallic_object 

ls -l phallic_object 
#OUTPUT:
-r-x--x--x   ... phallic_object
 
Create a directory.
mkdir ectory

1. Give yourself read and execute access but no write access. What does this prevent you from doing?
chmod 500 ectory

Cannot make/remove files or directories, but if file/directory already exist and you have permission to edit then you can do stuff to them

2. Give yourself all privileges except for read access. What does this prevent you from doing?
chmod 300 ectory

Cannot ls the directory 

3. Deny yourself execute access on the directory. What does this prevent you from doing?

chmod 600 ectory

Cannot cd into it

#EXERCISE 5b: find
#From the films directory:
#1. Locate all files named ‘shawnOfTheDead’ in your films directory and sub-directories.
find . -name 'shawnOfTheDead' -type f

#OUTPUT:
./comedy/shawnOfTheDead

#2. Locate all files in all subdirectories that were modified in the last 30 minutes.
find . -mmin -30 -type f

#OUTPUT:
#any files that were modified in the last 30 minutes

#3. Locate all files in all subdirectories with either ‘the’ or ‘The’ in the name.
find . -iname "*the*" -type f

#OUTPUT:
./horror/zombie/dawnOfTheDead
./horror/slasher/fridayThe13th
./horror/theHowling
./comedy/shawnOfTheDead

#4. Turn off write permission for all files that contain ‘the’ or ‘The’ in the name.
$find . -iname "*the*" -type f -exec chmod a-w {} \;

#ls -l ./* to see if they're off

#5. Interactively remove all files with ‘the’ or ‘The’ in the name.  (You can keep the files if you answer ‘n’ when prompted.)
find . -iname "*the*" -type f -exec rm -i {} \;

#############################################################################################################################
#EXERCISE 6: Stream Redirection on Command Line

#Perform the following actions using a single command on the command line.
#1. Display the contents of the ‘accounts’ file in upper case.
cat accounts | tr [:lower:] [:upper:]

#OUTPUT:
PIN534:SHELDON COOPER:1:1024
PIN756:LEONARD HOFSTADTER:2:620
PIN769:HOWARD WOLOWITZ:4:213
PIN210:RAJESH KOOTHRAPPALI:3:556

#2. Display the contents of the ‘accounts’ file with all the colons changed to spaces.
cat accounts | tr ":" " "

#OUTPUT:
PIN534 Sheldon Cooper 1 1024
PIN756 Leonard Hofstadter 2 620
PIN769 Howard Wolowitz 4 213
PIN210 Rajesh Koothrappali 3 556

#3. Retrieve the line containing ‘Sheldon Cooper’ from the accounts file and redirect it into a file called "sheldon".  If the file "sheldon" already exists then overwrite the file.
grep 'Sheldon Cooper' accounts > sheldon

cat sheldon
#OUTPUT:
PIN534:Sheldon Cooper:1:1024

#4. Retrieve the line containing ‘Leonard’ and append it into the sheldon file.
grep 'Leonard' accounts >> sheldon

cat sheldon
#OUTPUT:
PIN534:Sheldon Cooper:1:1024
PIN756:Leonard Hofstadter:2:620

#5. Use echo and wc to count the characters in the word “characters”.
echo characters | wc -m

#OUTPUT:
11

#6. Display the number of lines in the ‘accounts’ file without displaying the name of the file.
cat accounts | wc -l

#OUTPUT:
4

#7. Use sort to order the output of ls -l based on various different fields.
ls -l | sort -t" " -nrk[1-9]

#OUTPUT:
#too lazy to copy paste all 9 variations

#############################################################################################################################
#EXERCISE 7: Regular Expression, grep/egrep
vim file

07999234123
075435345623
07AAAAAAAAA
07bbbbbbbbb
B41RTG
01223567345
A345GUF
B3GHJ
768745
KL563478K
kl563478kx
[l563478k
6535345354554234
B45JKHL
65-34-76
012234567867
07856456636
BB4JUK
56-567-67
B546HUY
BB345614H
07666345234
45-34-25
01223456755
JH761423G

#Use grep or egrep to extract the following:
#1. Mobile phone numbers (11 digits starting in '07')
egrep "^07[0-9]{9}$" file

#OUTPUT:
07999234123
07856456636
07666345234

#2. National insurance numbers (2 letters, 6 digits, 1 letter)
egrep "^[a-zA-Z]{2}[0-9]{6}[a-zA-Z]$" file

#OUTPUT:
KL563478K
BB345614H
JH761423G

#3. Cambridge telephone numbers (11 digits starting in '01223')
egrep "^01223[0-9]{6}$" file

#OUTPUT:
01223567345
01223456755

#4. Bank sort codes (2 digits, dash, 2 digits, dash, 2 digits)
egrep "^([0-9]{2}-){2}[0-9]{2}" file

#OUTPUT:
65-34-76
45-34-25

#5. B-reg number plates ('B', 1-3 digits, 3 letters)
egrep "^B[0-9]{1,3}[a-zA-Z]{3}$" file

#OUTPUT:
B41RTG
B3GHJ
B546HUY

#6. All lines that do not contain letters
egrep "^[^a-zA-Z]*$" file

#OUTPUT:
07999234123
075435345623
01223567345
768745
6535345354554234
65-34-76
012234567867
07856456636
56-567-67
07666345234
45-34-25
01223456755

#############################################################################################################################
#EXERCISE 8: $,  $(( ... )), $[ ... ],  $( ... )

#Perform the following actions on the command line.
#1. Set a variable x equal to "Andy".  Set a variable y equal to "Bruce".  Try the following:    echo xy x y $x$y $x $y
x=Andy y=Bruce
echo xy x y $x$y $x $y

#OUTPUT:
xy x y AndyBruce Andy Bruce

#2. Set the variable x equal to 4 and the variable y equal to 9.  Display the the result of summing the contents of variable x and variable y.
x=4 y=9
echo $(($x+$y))

#OUTPUT:
13

#3. Set the variable x equal to the output of the command:  ls
x=$(ls)
echo $x

#OUTPUT:
#stuff

#4. Retrieve all the balances from the accounts file and store the result in a variable called "balances".  Display variable "balances".
balances=$(cut -d ":" -f4 accounts)
echo balances

#OUTPUT:
1024 620 213 556

#5. Display the result of 4 + 3 * 2.   Display the result of (4+3)/2.
echo $((4 + 3 * 2))
echo $(((4+3)/2))

#OUTPUT:
10
3

#6. Create a file that has some mathematical formula.  Send the contents of the file to bc (bench calculator) and store the result in a shell variable. 
vim two

1+1

cat two | bc

#OUTPUT:
2

#7. Use vi to create a file with “:” on line 1 and “6/3” on line 2. Using line 1 as the delimiter and line 2 as the field, cut and display the real names from the accounts file.
vi file

:
6/3

cut -d "$(head -1 file)" -f "$(tail -1 file | bc)" accounts

#OUTPUT:
Sheldon Cooper
Leonard Hofstadter
Howard Wolowitz
Rajesh Koothrappali

#############################################################################################################################
#EXERCISE 9: I THOUGHT WE HAD A BREAK THIS MORNING, i.e. Job Control
#Perform the following tasks
#1. Run the sleep commands for 1000 seconds in the background
sleep 1000&

#OUTPUT:
$jobid (THIS IS DIFFERENT FROM PID, WHICH IS PROCESS ID!!!)

#2. Use the ps command to identify the PID of the sleep command
ps

#OUTPUT:
PID TTY          TIME CMD
...
$pid ... sleep
...

#3. Kill the sleep command and check the sleep process was terminated successfully.
kill $pid

ps

#OUTPUT:
PID TTY          TIME CMD
...
[1]+  Terminated              sleep 1000

#4. Start another sleep command for 1000 seconds in the background
sleep 1000&

OUTPUT:
$jobid

#5. Use the jobs command to identify the JID of the sleep command
jobs

#OUTPUT:
[1]+  Running                 sleep 1000 &

#6. Bring the sleep command into the foreground
fg $jobid

#OUTPUT:
sleep 1000

#7. Kill the sleep command and check the process was terminated successfully.
ctrl+c

#OUTPUT:
^C
