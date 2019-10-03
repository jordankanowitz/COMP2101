#!/bin/bash
#
# This script produces the dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Improve this script by using the value in the automatic variable $USER for the name
# Improve this script by adding some time and day of the week information to the welcome message
#   Use a format like this:
#   It is HH:MM AM on weekday.

###############
# Variables   #
###############
title="Overlord"
myname="dennis"
hostname=$(hostname)

#added Variables
today=$(date +%A)
currentTime=$(date +"%H:%M %p")

###############
# Main        #
###############


#modify the script so it has the user variable instead of hostname
echo "Welcome to planet $USER, \"$title $myname!"\"

#modify the script so on a second line it has time and date
echo "It is $currentTime on $today"
