## master

Used ''' git master ''' to start the master exercise. Then used ''' git verify ''' to check if the exercise has been done

## commit one file

Used ''' git add A.txt ''' to add only A.txt to staging area then commited the file using ''' git commit -m "Add A.txt" '''

## commit one file of two currently staged

Used ''' git rm --cached A.txt ''' to remove A.txt from staging area. Now only B.txt is in staging area. Then commited B.txt using ''' git commit '''

## ignore unwanted files

Created a .gitignore file and wrote into it " *.<extension-name> " for ignoring all files with the given extensions and " <library-name>/ " for ignoring directories. Then staged and commited the changes.
