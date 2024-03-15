E-mail ID used: shekhar78456@gmail.com

## master

Used `git master` to start the master exercise. Then used `git verify` to check if the exercise has been done.

## commit one file

Used `git add A.txt`. `git add` adds files to staging area. Then commited the file using `git commit -m "Add A.txt"` . `git commit` commits the changes which can be said like it takes the 'screenshot' of the tracked files.

## commit one file of two currently staged

Used `git reset`. It remove all the files from staging area. Now added B.txt to staging area using `git add B.txt` . Then commited B.txt using `git commit -m "Add only B.txt"` .

## ignore unwanted files

Created a `.gitignore` file using command `touch .gitignore` and wrote into it " *.extension-name " for ignoring all files with the given extensions and " library/ " for ignoring directories. Then staged and commited the changes. Git does not keep track of files listed in `.gitignore`.

## chase branch that escaped

Mergeed 'escaped' with chase-branch using `git merge escaped` while being on 'chase-branch'. `git merge` merges the said branch with the current branch. It was a fast-forward merge.

## resolve a merge conflict

Resolved merge conflict by modifying equation.txt . Changed line 1 to `2 + 3 = 5` . Staged and commited the changes, thus merging the branches successfully.

## saving your work

Saved work on side using `git stash` . Removed the bug, staged and commited the changes. Used `git stash pop` to get back to the previous work. Made changes, staged and commited the changes.

## change branch history

Used `git rebase hot-bugfix` to append the change-branch-history to hot-bugfix.
`git append` appends the commit history of the current branch to the said branch. The commit history of change-branch-history was appended to hot-bugfix.

## remove ignored file

Used `git rm --cached ignored.txt` to stop the file from being tracked. Then commited the changes. `git rm --cached` stops a file from being tracked by git.

## change a letter case in the filename of an already tracked file

Used `git mv File.txt file.txt` to rename file then commited the changes.

## fix typographic mistake in the last commit

First, fixed the typo in the file. Then, staged the changes and used `git commit --amend` to change the last commit. Updated last commit message which opened in vi editor. `git --amend` is used to make changes to the most recent commit.

## forge the commit's date

Used `git commit --amend --date=1987-07-07T20:20:20` . It opened the commit in vi editor with the modified date.Then saved the work.

## fix typographic mistake in old commit

Used `git rebase -i HEAD^^` to go back 2 commits. Added edit inplace of pick in target commit to make changes to the commit. This brings the HEAD to the target commit. Made changes in file.txt, staged and commited using `git commit --amend`. Changed commit message. Used `git rebase --continue`. Resolved merge conflict. Staged file.txt and finished rebase.
