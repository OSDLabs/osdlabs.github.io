# in this video i shall demonstrate some file and folder manipulations
# we shall run a constant comparison with the graphical file browsing interface
# so typically, when you open the file browser, you are at a particular location, in some folder (aka directory)
# to check which directory we are in, on the terminal, we say:
pwd
# PrintWorkingDirectory
# so we are in the home folder, similar on most machines
# to create a new folder, we say:
mkdir CompProg
# MaKeDIRectory called CompProg.
# to enter this directory, on the browser you would just double click, here we say:
cd CompProg
# ChangeDirectory to CompProg
# now that we are in the CompProg directory, lets create some more folders.
mkdir OSDLabs
mkdir ProgrammingPractice
cd OSDLabs/
# to go back up one level, ie. into the parent directory, use:
cd ..
cd CompProg/
cd ProgrammingPractice/
cd ../OSDLabs/
# the last command was a little complicated, in a single step, we went to the parent directory, and then into another directory.
# it is such commands where shellscripts start to overtake graphical interfaces
cd ..
cd CompProg/OSDLabs/
cd ../..
#now the screen is very cluttered, lets "clear" it.
clear
# the commands haven't dissapeared, they can be seen by scrolling back up - try it on your machines
# the last command we shall see in this video is quite versatile.
# first lets cd into our directory
cd CompProg/
# to see the contents of the directory, we say:
ls
# voila! these are the 2 directories we had created.
# ls displays any folders or files that are inside the current directory
cd ..
cd Documents/
ls
# see?
cd ../CompProg/
# there are many other variants of ls, to print details of all files, etc.
ls -a
# ls with the -a option prints hidden files
# the . and the .. are linux's way of representing the current and parent directories.
cd ..
ls
ls -a
clear
# lastly, the -l option displays detailed file info:
cd CompProg/
ls -l
clear
# hope the video was helpful. Feedback welcome!
