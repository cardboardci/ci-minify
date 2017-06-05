#!/bin/sh

# Variables
#
# Variables of the script.
SCRIPT=$(readlink -f "$0")
DIR="$(dirname $SCRIPT)"
ROOT_DIR="$(dirname $DIR)"
BIN_DIR="${DIR}/target"
DATA_DIR="${DIR}/resources"
LIB_DIR="${DIR}/lib"

# 
# Tests
#
source $LIB_DIR/testbase.sh

#
# Test Runner
#
(
    mkdir -p $BIN_DIR
    (
      RESULT=$(install)
      assertNotEquals "cannot install to image" 0 $?
    )

    (
      RESULT=$(simple)
      assertEquals "minifying simple project" 0 $?
    )
)