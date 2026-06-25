#!/bin/bash

###special variables##
echo "All Variables passed to script: $@"
echo "Number of variables passed: $#"
echo "First Variable: $1"
echo "script name:$0"
echo "Who is running this : $USER"
echo "Which directory: $PWD"
echo "Home directory:$HOME"
echo "PID of the current cript: $$"
sleep 5 &
echo "PID of the background command running just now :$!"
wait $! 
echo "line number :$LINENO"
echo "Script executed in $SECONDS seconds"
echo "Random number : $RANDOM"
echo "Exit code of previous command :$?"