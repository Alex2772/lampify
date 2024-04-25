#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

LAMP_FILE_PATH="/tmp/.lamp"

value=`cat $LAMP_FILE_PATH`

if [ "$value" != "0" ]; then
    echo "Enable"
    expect $SCRIPT_DIR/on.sh
    sleep 1
    expect $SCRIPT_DIR/on.sh
    sleep 1
    expect $SCRIPT_DIR/on.sh
    echo "0" > $LAMP_FILE_PATH
else
    echo "Disable"
    expect $SCRIPT_DIR/off.sh
    sleep 1
    expect $SCRIPT_DIR/off.sh
    sleep 1
    expect $SCRIPT_DIR/off.sh
    sleep 1
    expect $SCRIPT_DIR/off.sh
    echo "1" > $LAMP_FILE_PATH
fi
