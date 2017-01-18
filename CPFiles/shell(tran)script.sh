# welcome to the first video by osd labs
# in this video i shall try to cover some basic commands, which are very important in life
#diving in.
#command : date
# just type date, like so:
date
#it told you the date, see!
#command: who
# who is supposed to tell you the users who are logged in. its almost always 2 people. I have never understood why, and what that means
who
# to figure out which you are, type "who am i" instead.
# this next command is more useful. it displays (prints) a calendar
# command : cal
cal
# lastly, lets see if there is some way to avoid remembering the usage of each command.
# it is unavoidable to have to remember the command
# you can use "man" to do this. just type man, followed by the command name
man cal
# man, stands for manual, and the word you type after that, is the manual you wish to see.
# enter 'q' anytime to exit the manual.
# happy shellscripting! see you in our next video!

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

# welcome to the third video. here i shall cover very basic file related commands
# the first is echo, for "echoing" text
# it just repeates whatever you want, after you:
echo "hello"
echo "this is silly"
# echo is pretty useful, especially when in conjunction with the redirection operation: >
# '>' redirects the output of a command into a file, rather than display it on screen.
echo "OSDLabs feedbacks:" > OSDLabsFeedback.txt
# now the output of the echo has gone into the file
# to view the file contents, we shall use the "cat" command.
# cat is short for concatenate: it concatenates the output of the file(s) you specify, and displays it to you
cat OSDLabsFeedback.txt 
# cat can also be called without specifying a file
cat
# in that case, instead of taking input from a file, cat takes input from the keyboard itself
to break out of cat and return to the terminal, use CTRL+D
# to break out of cat and return to the terminal, use CTRL+D
# cat can also be used in conjunction with the redirection operation:
cat > OSDLabsFeedback.txt 
# to view, use cat again:
cat OSDLabsFeedback.txt 
# notice that the old contents of the file have vanished. it has been OVERWRITTEN
# to avoid this, use a different redirection operator:
cat >> OSDLabsFeedback.txt 
cat OSDLabsFeedback.txt 
# the file has now been APPENDED to, instead of being overwritten
# the next command is cp, for CoPying files
cp OSDLabsFeedback.txt FeedBack.txt
# this copies the the file OSDLabsFeedback.txt, and names the copy as FeedBack.txt
# verify that both files exist:
ls
# (i had created the hi and hi2 folders earlier, ignore them)
# we can verify the contents of the files to be the same too.
cat FeedBack.txt 
cat OSDLabsFeedback.txt 
# lets edit one of these files.
echo "duplicate file!" > FeedBack.txt 
# note that the file has been OVERWRITTEN
# cat can also be used to view the contents of multiple files at once - concatenated on after the other.
cat OSDLabsFeedback.txt FeedBack.txt 
cat FeedBack.txt OSDLabsFeedback.txt
# and even:
cat FeedBack.txt OSDLabsFeedback.txt > ThirdFile.txt
cat FeedBack.txt OSDLabsFeedback.txt >> ThirdFile.txt
# guess the contents of ThirdFile.txt . . . .
cat ThirdFile.txt 
# moving on to moving files, we use the mv command (for MoVe):
mv ThirdFile.txt hi2
# the ThirdFile is now inside the hi2 directory
# verify:
ls
ls hi2/
# notice the alternate ls syntax too, different from the previous video
# there is a similar command to delete files.
# deleteing is a dangerous option, use this with care as it can't be undone
# I started my cp lab last year by running a variant of this command that deleted everything on my machine!
# first lets cd into hi2
cd hi2
ls
rm ThirdFile.txt 
ls
# ThirdFile has been ReMoved
cd ..
ls
rm FeedBack.txt 
ls
# that concludes our video. please give us feedback on what you liked, and what you think could use improvement!
# cheers

# welcome to the final video on shell scripts for this week. 
# in this video, i shall give tips to improve speed and proficiency in using the terminal
# tip1 : effective use of options.
# most commands in linux come with many, many options that can enhance them. these options are always optional
# typically you can just use the man pages to figure them out.
# i shall illustrate them using the ls command, feel free to pause and check man ls if you like
# plain vanilla ls:
ls
ls -r
# reversed output. r is actually short for reverse
ls --reverse
ls -l
# l stand for long (i think)
ls -R
# this is the most important. it recursively displays ALL the contents of the current directory
# it is handy to learn how to use these options together, with each other
ls -Rr
# many times, people spend their time in the lab typing entire paths. they do this for cp, cd, etc.
# please use relative paths!
cd OSData/
# if i want to go back to CP, i will:
cd ..
cd OSData/
# people often type the whole path:
cd ~/CP/
# this is correct, but cumbersome.
# to help with this relative path definition, use tab autocompletion to the fullest.
# ie, if you type half a command, or half a file/folder name, and press tab, linux will try to complete it for you.
cd OSData
# this works, but is slow typing, instead, press tab after typing OSDa ...
cd ..
cd OSData/
ls
# press tab after typing cd Feed ...
cd FeedbackForms/
cd ..
# linux remembers the commands you type - you can access them with your arrow keys. I will now use the up/down arrow keys for the next few commands...
cd OSData/
cd FeedbackForms/
cd ..
# saving on typing time is essential ... because life is a race.
# finally, i want to introduce wildcard characters: *
# you can use '*' to refer to any number of characters in the name of your file, while specifying it.
# this means you can select multiple files at a time .... very very useful in programming careers. :-)
# lets see the current directory structure before the illustration:
ls -R
# how to i delete all the Lab2 files inside the feedback forms directory with a single command?
rm -v OSData/FeedbackForms/Lab2*
ls -R
# perfect! notice the use of the -v flag, and the tab, and the arrow keys ....
#similarly, deleting all .txt files in the directory (because only .xxx is worth keeping?):
rm -v OSData/*.txt
ls -R
# perfect!
# with this, the shell script videos for this lab are over.
# please do give us feedback, we want to improve this screencast .... this is only a very rough, preliminary start.
# thanks for watching!
