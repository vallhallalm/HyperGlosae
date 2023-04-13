#!/bin/bash
outputGreenframe=$(greenframe analyze)
echo $outputGreenframe

threshold=0.05

interString=${outputGreenframe% Wh*}
finalConsumption=${interString##* (}
echo $finalConsumption

if (( $(echo "$finalConsumption > $threshold" |bc -l) ))
then 
    echo 34
    exit 34
else 
    echo 0
    exit 0
fi