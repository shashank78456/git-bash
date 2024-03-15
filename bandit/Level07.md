Used the following commands: 
```
find -size 33c -user bandit7 -group bandit6
```

`-user` is used to check files owned by the target user and `-group` is used to check files owned by the target group.

This gave a list of files. Most of them had permissions denied. There was one file `./var/lib/dpkg/info/bandit7.password` with read permissions. Used `cat ./var/lib/dpkg/info/bandit7.password` to read the file and got the flag.

Flag: `z7WtoNQU2XfjmMtWA8u5rN4vzqu4v99S`