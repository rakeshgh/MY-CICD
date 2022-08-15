#!/bin/bash
IA=$1  # Initial Amount  -  $1000
MI=$2  # Monthly Investment  -  $1000
TIS=$3 # Total Investment Span  -  30
APR=$4 # Annual Percentage Return  -  25   TI = $73K, Return = $39M
TINT=0

echo "YEAR|PRINCIPAL|INTEREST|TI|TOTAL"
YEAR=0
while [ $YEAR -lt $TIS ]  
do
    ((YEAR++))
    if [ $YEAR -le 6 ]
    then
        YI=`expr $MI \* 12 \* $YEAR`  # YEARLY INVESTMENT
    else
        YI=$YI
    fi
    PA=`expr $YI + $IA`   # PRINCIPAL AMOUNT
    if [ $YEAR -gt 1 ]
    then
        PA_WPI=`expr $TOTAL + 12000`   # PA WITH PREVIOUS INTEREST
        INT=$(($PA_WPI * $APR / 100))    # INTEREST
    else
        INT=$(($PA * $APR / 100))
    fi
    TINT=`expr $TINT + $INT`   # TOTAL INTEREST
    TOTAL=`expr $PA + $TINT`   # TOTAL
    echo "$YEAR|$PA|$INT|$TINT|$TOTAL"
done