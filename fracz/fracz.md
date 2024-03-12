## master

Used ''' git master ''' to start the master exercise. Then used ''' git verify ''' to check if the exercise has been done

## commit one file

Used ''' git add A.txt ''' to add only A.txt to staging area then commited the file using ''' git commit -m "Add A.txt" '''

## commit one file of two currently staged

Used ''' git reset ''' to remove all files from staging area. Now added B.txt to staging area. Then commited B.txt using ''' git commit '''

## ignore unwanted files

Created a .gitignore file and wrote into it " \*.<extension-name> " for ignoring all files with the given extensions and " <library-name>/ " for ignoring directories. Then staged and commited the changes.

## chase branch that escaped

Merge escaped with chase-branch using ''' git merge escaped ''' while being on chase-branch. It was a fast-forward merge.

## resolve a merge conflict

Resolved merge conflict by modifying equation.txt . Changed line 1 to ''' 2 + 3 =5 ''' . Staged and commited the changes, thus merging successfully the branches.

## saving your work

Saved work on side using ''' git stash ''' . Removed the bug, staged and commited the changes. Used ''' git stash pop ''' to get back to the previous work. Made changes, staged and commited the changes.

## change branch history

Used ''' git rebase hot-bugfix ''' to append the change-branch-history to hot-bugfix.

## remove ignored file

Used ''' git rm --cached ignored.txt ''' to stop the file from being tracked. Then commited the chages.

## change a letter case in the filename of an already tracked file

Used ''' git mv File.txt file.txt ''' to rename file then commited the changes.

## fix typographic mistake in the last commit

First, fixed the typo in the file. Then, staged the changes and used ''' git commit --amend ''' to change the last commit. Updated last commit message which opened in vi editor.

## forge the commit's date

Used ''' git commit --amend --date=1987-04-07T22:13:13 '''. Modified date and saved.

## fix typographic mistake in old commit

Used ''' git rebase -i HEAD^^ ''' to back 2 commits. Added edit inplace of pick in target commit. Made changes in file.txt, staged and commited using ''' git commit --amend '''. Changed commit message. Used ''' git rebase continue '''. Resolved merge conflict. Staged file.txt and finished rebase.
