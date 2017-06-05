#!/bin/sh

# Variables
#
# Variables of the script.
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"
ROOT_DIR="$(dirname $DIR)"

# Tests
#
# The functions that test certain functionality.

function install()
{
    apk add --update zip >/dev/null 2>&1
}

function simple()
{
    minify -o $BIN_DIR $DATA_DIR/
}

# Framework
#
# The functions for the framework

function assertEquals()
{
    msg=$1
    expected=$2
    actual=$3

    if [ "$expected" != "$actual" ]; then
        echo "$msg: FAILED: EXPECTED=$expected ACTUAL=$actual"
    else
        echo "$msg: PASSED"
    fi
}

function assertNotEquals()
{
    msg=$1
    expected=$2
    actual=$3

    if [ "$expected" == "$actual" ]; then
        echo "$msg: FAILED: EXPECTED=$expected ACTUAL=$actual"
    else
        echo "$msg: PASSED"
    fi
}