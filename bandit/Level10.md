Used the following commands:
```
ls
strings data.txt | grep "==="
```

Used `strings` to get the human-readable text from `data.txt` file, then piped the output into `grep "===" ` to get lines which contain several `=` .

Got the following output:
```
x]T========== theG)"
========== passwordk^
========== is
========== G7w8LIi6J3kTb8A7j9LgrywtEUlyyp6s
```

Flag: `G7w8LIi6J3kTb8A7j9LgrywtEUlyyp6s`