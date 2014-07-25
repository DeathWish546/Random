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

#/home/first.last/films
#├── action
#│   └── rambo
#├── comedy
#│   ├── bigMommasHouse
#│   ├── ghostbusters
#│   ├── ghostbusters2
#│   └── shawnOfTheDead
#└── horror
#    ├── slasher
#    │   ├── fridayThe13th
#    │   ├── halloween
#    │   └── predator
#    ├── theHowling
#    └── zombie
#        └── dawnOfTheDead

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

# /home/first.last/films
# ├── action
# │   ├── firstBlood
# │   ├── predator
# │   ├── rockyI
# │   ├── rockyII
# │   ├── rockyIII
# │   ├── rockyIV
# │   └── rockyV
# ├── comedy
# │   ├── bigMommasHouse
# │   ├── shawnOfTheDead
# │   └── supernaturalComedy
# │       ├── ghostbusters
# │       └── ghostbusters2
# └── horror
#     ├── slasher
#     │   ├── fridayThe13th
#     │   └── halloween
#     ├── theHowling
#     └── zombie
#         └── dawnOfTheDead

#############################################################################################################################
#EXERCISE 3: vi/vim/text editor of your choice

#keystrokes:
#i -lowercase i: insert mode starting before whatever character your cursor is highlighting
#I -uppercase i: insert mode starting at the start of the line
#dw: delete everything starting at the highlighted character to the next space. 
	#e.g. "bob was here?", if i highlight 'a' and press dw, i would get "bob where?"
#dd: delete entire row, including new line character
#D: delete everything starting at and after highlighted character
#p: puts a copy of whatever you deleted last, NOT UNDO!!
	#e.g. "bob was here?", press D at 'b' and delete whole line, then p anywhere and it will print "bob was here?" wherever you're highlighted
#x, or nx: delete highlighted character, or n characters including highlighted
#o: inserts a new line, then insert mode starting on next line
#O: inserts a new line, then insert mode starting on current line
#A: insert mode starting at the end of the line
#ZZ: write file and quit

#Use vi to create the ‘accounts’ file:

#PIN534:Sheldon Cooper:1:1024
#PIN756:Leonard Hofstadter:2:620
#PIN769:Howard Wolowitz:4:213
#PIN210:Rajesh Koothrappali:3:556

#...idk just go into vi, press a/i/I/O/o/A/whatever the hell you want and type that shit in

#############################################################################################################################
#EXERCISE 4: wc, fgrep, cut, sort

#1.    Count the number of characters in the ‘accounts’ file.
#2.    Count the number of words in the ‘accounts’ file.
#3.    Count the number of lines in the ‘accounts’ file.
#4.    Display the line containing ‘Sheldon Cooper’.
#5.    Display the account that has id of 3. (tip: look for ":3:")
#6.    Display the account with a balance of 620.
#7.    Retrieve and display the name of every person represented in the ‘accounts’ file.
#8.    Retrieve the pin numbers for every person represented in the ‘accounts’ file.
#9.    Retrieve the balance and the real name for every person in the ‘accounts’ file.
#10.  Display the entries in the ‘accounts’ file sorted by account balance in descending order.
