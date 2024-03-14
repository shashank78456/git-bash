Changed the file permissions of `sshkey.private` with `chmod sshkey.private 700` as the current permissions gave an error. Then used `ssh -i sshkey.private bandit14@localhost -p 2220` to login to user bandit14. Used `cat /etc/bandit_pass/bandit14` to get the flag.

Flag: `fGrHPx402xGC7U7rXKDaxiWFTOiF0ENq`
