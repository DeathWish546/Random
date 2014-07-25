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

# /home/mibo.zhao/films
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

