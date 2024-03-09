#!/bin/bash

LAMP_FILE_PATH="/tmp/.lamp"

value=`cat $LAMP_FILE_PATH`

if [ "$value" != "0" ]; then
    expect ./on.sh
    echo "0" > $LAMP_FILE_PATH
else
    expect ./off.sh
    echo "1" > $LAMP_FILE_PATH
fi
