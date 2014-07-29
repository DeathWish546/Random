1.Copy the /etc/hosts file into your unixmock directory
cp /etc/hosts .
cp /etc/hosts ~/unixmock

2.Remove read for group and other from the hosts file in y our unixmock directory
chmod go-r hosts

3.Create a variable called dir and set it to /home
dir=/home

4.List the contents of the directory stored in the variable dir
ls $dir

5.Find all files in your home directory or subdirectories which  you have modified within the last day and store the results in a file called recentfiles
find ~ -mtime -1 -type f > recentfiles

6.Display all the lines in grepFile taht do not start with a letter
grep -v "^[a-zA-Z]" grepfile

7.Display a list of all files in your home directory including hidden files
ls -a ~/ | egrep ^d

8. Display a list of only the hidden files in your home directory. Do not list the contents of subdirectories.
ls -a ~/ | grep "^."

9. Display the 1st 5 lines of batchprog
head -5 batchprog

10.Count the lines in batchprog that contian the word date
grep -cw date batchprog
grep -w date batchprog | wc -l

11. Display just the 1st 3 characters of each line in grepFile
cut -c1-3 grepFile

12. List all the people currently logged into the system and sort the output alphabetically by username.
who | sort 
finger | grep -v Login | sort 

13. List all people who are currently logged into the system more than once. Sort the output alphabetically by username.
who | sort | cut -d" " -f1 | uniq -d
finger | grep -v Login | sort | cut -d" " -f1 | uniq -d
users | tr ' ' '\n' | uniq -d

14. Identify the process ID of your bash shell
ps

15. Count the number of directories and subdirectories in your home directory
find ~ -type d | wc -l 

16. Identify the directory which holds the touch command. Do not search the whole filesystem.
which touch 
type touch

17. Find all the files in /etc (or subdirectories of /etc) that start with the letter p. 
find /etc -type f -name 'p*' >etcpfiles 2>/dev/null

18 Display the contents of the /etc/hosts file but replace each: with *
cat /etc/hosts | tr ':' '*'
tr ':' '*' < /etc/hosts

19. List the size, in characters, of each file in your unixmock directory and store in a file filesizelist
wc -m * > filesizelist
cat filesizelist

20. Delete the grepFile and batchprog files from your unixmock directory
rm grepFile batchprog
