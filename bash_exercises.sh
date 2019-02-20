#!/bin/bash

#b. Find the 5 largest files you have permission to view on the server
#- Start with the command ‘find .’ and pipe it into another command that will filter out the lines representing files within the /offLimits directory

zeeshan@zeeshan-VirtualBox:~/Documents/LinuxFun$ find -type f -not -path "./offLimit/*" -exec du -Sh {} + | sort -rh | head -n 5 

#c. Where are all the copies of the command ‘cat’ on the server
~/Documents/LinuxFun$ which cat

#how to check the file format for a file - in the file type:
:set ff?

#how to search for a item in a file:
%s/whatever you wanna search
#can also use
?whatever

#convert a file to a bsv format from the command line
sed 's/~/|/g' fileName > newFileName.bsv

#combine a file without including the header in one of the files
#take the header of one file
sed 1d fileName.bsv > newFileName
cat newFileName otherFile > newestFile

#copy from cluster to desktop
scp username@IP: toLocation

#compress using .gz file
gzip fileName

#uncompress
gunzip fileName

#find the number of records in a file
NumRec=$(wc -l /home/zeeshan/Documents/LinuxFun/fileName.bsv | awk '{print $1-1}')
echo $NumRec" lines"

#find the number of unique values in the specified column
var1=$(cut fileName.bsv -f 4 -d '|' | sort -u) 
echo $var1

#list the last 10 commands you ran
history 10

#display which emails are valid emails
grep '^[a-zA-Z0-9]\+@[a-zA-Z0-9]\+\.[a-z]\{2,\}' emails.txt

#search for a particular pattern of text in several files at once
grep -rnw '/path/to/somewhere/' -e 'pattern'
#can also just do:
grep pattern directory/*
