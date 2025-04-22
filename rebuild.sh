#!/bin/sh

# Check if no arguments were provided
if [ $# -eq 0 ]; then
    # No arguments were provided, proceed as before
    make clean && make all || beep
else
    # An argument was provided, use it as the dependency to make
    DEP=$1
    make $DEP || beep
fi
