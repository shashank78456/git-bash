## master

Used ''' git master ''' to start the master exercise. Then used ''' git verify ''' to check if the exercise has been done

## commit one file

Used ''' git add A.txt ''' to add only A.txt to staging area then commited the file using ''' git commit -m "Add A.txt" '''

## commit one file of two currently staged

Used ''' git rm --cached A.txt ''' to remove A.txt from staging area. Now only B.txt is in staging area. Then commited B.txt using ''' git commit '''

## ignore unwanted files

Created a .gitignore file and wrote into it " *.<extension-name> " for ignoring all files with the given extensions and " <library-name>/ " for ignoring directories. Then staged and commited the changes.

## Chase branch that escaped

Merge escaped with chase-branch using ''' git merge escaped ''' while being on chase-branch. It was a fast-forward merge.

## Resolve a merge conflict

Resolved merge conflict by modifying equation.txt . Changed line 1 to ''' 2 + 3 =5 ''' . Staged and commited the changes, thus merging successfully the branches.

## Saving your work

Saved work on side using ''' git stash ''' . Removed the bug, staged and commited the changes. Used ''' git stash pop ''' to get back to the previous work. Made changes, staged and commited the changes.

