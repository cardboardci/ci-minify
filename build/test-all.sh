#!/bin/sh
source "$(dirname $(readlink -f "$0"))/tools.sh"

#
# Test All
#

for dirname in $(getVersionPaths); 
do 
    version=$(basename $dirname); 

    echo "########################################"
    echo "# Version: $version"
    echo "########################################"
    
    make -s -C "${DIR_BUILD}" VERSION=${version} test
done