#!/bin/bash

# Calculate the average of a series of numbers.

SCORE="0"
AVERAGE="0"
SUM="0"
NUM="0"
FILE=""
NFILE=""
START=""
STOP=""

 echo -n "Enter the name of file you wish to split ('q' for quit): "; read FILE;

if [ "$FILE" == "q" ]; then
    echo "Bye."
    exit
fi

while true; do

  echo -n "Enter the start time ('q' for quit): "; read START;
    if [ "$START" == "q" ]; then
    echo "Bye."
    break
    fi
  echo -n "Enter the stop time ('q' for quit): "; read STOP;
    if [ "$STOP" == "q" ]; then
    echo "Bye."
    break
    fi
  echo -n "Enter the track name ('q' for quit): "; read NFILE;

  if [ "$NFILE" == "q" ]; then
    echo "Bye."
    break
  else
    sox $FILE $NFILE trim  $START $STOP
  fi

done

echo "Exiting."
