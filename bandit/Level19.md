Used commands at the end of `ssh` statement to remotely execute commands without opening the terminal as opening the bash terminal would result in auto-logout. 

Used `ssh bandit18@bandit.labs.overthewire.org -p 2220 ls` to list the files and check if the readme file is on the home directory. Then used `ssh bandit18@bandit.labs.overthewire.org -p 2220 cat readme` to get the flag.

Flag: `awhqfNnAbc1naukrpqDYcF95h7HoMTrC`