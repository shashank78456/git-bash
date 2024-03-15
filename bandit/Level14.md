Changed the file permissions of `sshkey.private` with `chmod sshkey.private 700` as the current permissions gave an error. Then used `ssh -i sshkey.private bandit14@localhost -p 2220` to login to user bandit14. Used `cat /etc/bandit_pass/bandit14` to get the flag.

`chmod` is used to change the permissions of a file. `700` here gives read, write and execute permissions to the user and no permissions to groups or others. `ssh -i` is used to pass the private key file at the time of logging in.

Flag: `fGrHPx402xGC7U7rXKDaxiWFTOiF0ENq`
