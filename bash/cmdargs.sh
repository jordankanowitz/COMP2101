#!/bin/bash
# This script demonstrates how the shift command works


echo "--------IMPROVE--------"

#TASK 1

while [ $# -gt 0 ]; do
  # tell the user how many things are left on the command line
  echo "There are $# things left to process on the command line."
  # display whatever is in $1
  echo "\$1 has $1 in it."
  case $1 in
    -h )
    echo 'You added "-h" for help'
    ;;
    -v )
    echo 'You added "-v" for verbose'
    ;;
    #task 2
    -d )
      case "$2" in
        [1-5] )
        echo "You added -d for debug level $2"
        shift
        ;;
        *)
        echo "The -d option must be followed with a number[1-5]."
        shift
      esac
    ;;
    *)
    error=$1
    echo "Invalid value $error"
    ;;
    esac
  shift
  #tell the user we shifted things
  echo "Shifted command line, leaving $# things left to process"
  echo "--------------------------------"
done
echo "Done"
