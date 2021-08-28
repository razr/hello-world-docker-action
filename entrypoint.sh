#!/bin/sh -l

echo "Hello $1"
uname -a
time=$(date)
echo "::set-output name=time::$time"
