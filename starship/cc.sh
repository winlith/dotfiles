#!/bin/bash

function get_version {
    echo $($1 --version | awk '/([0-9]+\.[0-9]+\.[0-9]+)/{print $3}')
}

clangver=$(get_version clang)
gccver=$(get_version gcc)

echo "gcc v$gccver  clang v$clangver"
