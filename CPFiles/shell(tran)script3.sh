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
