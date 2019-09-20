#!/bin/bash
#
#this script generates a report of files that have permission bit
#turned on it is for the lab1 exercise

#task 1 for the excerise is to modify it to also find and display
#the setgid files in a second listing
#the second listing should display after the setuid file list, and be
#formatted similar to the setuid file listing

#task 2 for the excersise is to modify it to also display
#the 10 largest files in the system, sorted by their sizes
#the listing should include the file name, owner, and size
#in MBytes and be displayed after the listings of setuid
#setgid files

echo "Setuid files:"
echo "============"
find / -type f -execulatable -perm -4000 -ls 2>/dev/null | sort -k 3
echo ""
echo "Setid files:"
echo "============"
find / -type f -execulatable -perm -4000 -ls 2>/dev/null | sort -k 3
echo ""echo "Setgid files:"
echo "============"
find / -type f -execulatable -ls 2>/dev/null | sort -r -n -k7 | head 10
echo ""
