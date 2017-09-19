#!/usr/bin/env bash

# @see: https://stackoverflow.com/questions/59895/getting-the-source-directory-of-a-bash-script-from-within#246128

##
# Get the root path from a bash source
# root-path <SOURCE>
#
# @param <SOURCE> The bash source invokation
# @example: ROOT_PATH=$( root-path ${BASH_SOURCE[0]} )
##
root-path () {
    echo "$( cd "$( dirname "${1}" )" && pwd )"
}


##
# Resolve the root path from a bash source
# root-path--resolve <SOURCE>
#
# @param <SOURCE> The bash source invokation
# @example: ROOT_PATH=$( root-path--resolve ${BASH_SOURCE[0]} )
##
root-path--resolve () {
    # <SOURCE> is the 1st argument
    local SOURCE=$1 DIR=''

    while [ -h "$SOURCE" ]; do # resolve $SOURCE until the file is no longer a symlink
        DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
        SOURCE="$(readlink "$SOURCE")"
        [[ $SOURCE != /* ]] && SOURCE="$DIR/$SOURCE" # if $SOURCE was a relative symlink, we need to resolve it relative to the path where the symlink file was located
    done
    DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"
    echo "$DIR"
    unset DIR SOURCE
}
