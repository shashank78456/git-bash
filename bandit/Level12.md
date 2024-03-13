Used the following command:
```
 cat data.txt | tr [n-za-mN-ZA-M] [a-zA-Z]
```

Pipelined the output of `cat` to `tr` . The input set `[n-za-mN-ZA-M]` translated the output to output set `[a-zA-Z]` , giving the output:
```
The password is JVNBBFSmZwKKOP0XbFXOoW8chDz5yVRv
```

Flag: `JVNBBFSmZwKKOP0XbFXOoW8chDz5yVRv`