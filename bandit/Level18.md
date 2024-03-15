Used `diff passwords.new passwords.old` to get the line which differs in these two files.

```
diff passwords.new passwords.old
```

Got output:
```
< hga5tuuCLF6fFzUpnagiMN8ssu9LFrdg
---
> p6ggwdNHncnmCNxuAt0KtKVq185ZU7AW
```

`diff` gives the difference in the target files.
Used the first line as the flag as it belongs to passwords.new file.

Flag: `hga5tuuCLF6fFzUpnagiMN8ssu9LFrdg`