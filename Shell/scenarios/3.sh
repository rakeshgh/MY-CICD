#!/bin/bash
NAME=$1
AGE=$2  # declare -i AGE=$2, this way line 5 works even 100 is first
echo "Entered $NAME and $BORN"
AGE_100=$[$AGE + 100]  # This is only working if AGE is first
#AGE_100=`expr 100 + $BORN`
echo "Once you reach 100, your age will be $AGE_100"