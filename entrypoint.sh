#!/bin/sh -l

echo "Hello $1"

time=$(uname -a)
#time=$(date)
echo "::set-output name=time::$time"
