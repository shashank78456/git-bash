Executed the binary file through `./suconnect`. Got the following output:
```
Usage: ./suconnect <portnumber>
This program will connect to the given port on localhost using TCP. If it receives the correct password from the other side, the next password is transmitted back.
```

Used `echo -n VxCazJaVykI6W36BkBU0mJTCM8rR95XT | nc -l -p 3000 &` to run a server to listen on port 3000 and piplined the old password using `echo -n`. It keeps running in background using `&`.

Used `./suconnect 3000` to run the binary file as instructed. Got the output:
```
Read: VxCazJaVykI6W36BkBU0mJTCM8rR95XT
Password matches, sending next password
NvEJF7oVjkddltPSrdKEFOllh9V1IBcq
```

Closed the server in the background with `^C`.

Flag: `NvEJF7oVjkddltPSrdKEFOllh9V1IBcq`
