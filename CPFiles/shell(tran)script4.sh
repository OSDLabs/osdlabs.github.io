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
