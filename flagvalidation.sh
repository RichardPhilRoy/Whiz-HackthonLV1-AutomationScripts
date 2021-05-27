#!/bin/bash
echo "Enter the submitted flag"
read flag
grep -n $flag flags.txt >> validatedflags.txt
grep -o $flag validatedflags.txt | wc -l
