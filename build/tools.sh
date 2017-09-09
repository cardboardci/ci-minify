#!/bin/sh

#
# File System Variables
#
DIR_PROJECT="$(dirname $(dirname $(readlink -f "$0")))"
DIR_BUILD="$DIR_PROJECT/build"
DIR_DOC="$DIR_PROJECT/doc"
DIR_CONSTANTS="$DIR_PROJECT/info"
DIR_SRC="$DIR_PROJECT/src"
DIR_TESTS="$DIR_PROJECT/tests"
DIR_VERSIONS="$DIR_PROJECT/versions"

#
# Functions
#
getDirectories() {
    ls -d $1/*
}

getVersionPaths() {
    ls -d $DIR_VERSIONS/*
 }