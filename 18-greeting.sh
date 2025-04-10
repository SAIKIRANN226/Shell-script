#!/bin/bash

NAME=""
WISHES="Good Morning"

USAGE(){
    echo "USGAE:: $(basename $0) -n <name> -w <wishes>"
    echo "Options::"
    echo " -n, Specify the name (mandatory)"
    echo " -w, Specify the wishes. (Optional). Default is Good Morning"
    echo " -h, Display Help and exit"
}

while getopts ":n:w:h" opt; do
    case $opt in
        n) NAME="$OPTARG";;
        w) WISHES="$OPTARG";;
        \?) echo "invalid options: -"$OPTARG"" >&2; USAGE; exit;; # Invalid argument
        :) USAGE; exit;; # Empty argument
        h) USAGE; exit;; # Help argument
    esac
done

# If [ -z "$NAME" ] || [ -z "$WISHES" ]; then
if [ -z "$NAME" ]; then # Now wishes is optional, -z means empty that means if we dont pass the optarg
    # echo "ERROR: Both -n and -w are mandatory options."
    echo "ERROR: -n is mandatory."
    USAGE
    exit 1
fi

echo "Hello $NAME. $WISHES. I have been learning Shell Script."