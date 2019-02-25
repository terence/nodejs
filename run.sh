#!/bin/bash
#================================================================
# Command-line Assistant - run.sh
# - NodeJS admin scripts
#================================================================


echo =============================================================
echo Hi $USER@$HOSTNAME. 
echo What do you want to do?
echo -------------------------------------------------------------
echo 01: Run Express
echo 02: NPM: Install requirements
echo ----------------------------------------------
echo qq: Exit [Quit]
echo Enter [Selection] to continue
echo =============================================================
# Command line selection
if [ -n "$1" ]; then
  SELECTION=$1
else
  read  -n 2 SELECTION
fi
if [ -n "$2" ]; then
  PARAM2=$2
else
  read  -n  PARAM2
fi
echo Your selection is : $SELECTION.
echo Your parameter is : $PARAM2.

IMAGE=express
CONTAINER=expressc

case "$SELECTION" in
# Note variable is quoted.

  "01" )
  echo ===========================================================
  echo Run express
  echo ===========================================================
  node express.js
  ;;


  "02" )
  echo ===========================================================
  echo NPM: Package dump
  echo ===========================================================
  npm init --yes
  ;;


  "qq" )
  echo Quit
  exit 0
  ;;

   * )
   # Default option.
   # Empty input (hitting RETURN) fits here, too.
   echo
   echo "Not a recognized option."
  ;;

esac


