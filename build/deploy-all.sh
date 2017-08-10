#!/bin/sh
source "$(dirname $(readlink -f "$0"))/tools.sh"

#
# Push All
#

for dirname in $(getVersionPaths); 
do 
    version=$(basename $dirname); 

    echo "########################################"
    echo "# Version: $version"
    echo "########################################"
    
    make -s -C "${DIR_BUILD}" VERSION=${version} pull
    make -s -C "${DIR_BUILD}" VERSION=${version} release
    make -s -C "${DIR_BUILD}" VERSION=${version} deploy
done