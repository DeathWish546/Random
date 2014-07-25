#To copy and paste any of this code, just copy, and right click into your putty to paste
#Obviously these are not the only way to do things

#Example 1: Creating a directory structure in your home directory using mkdir, touch, cd, ls and tree
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
