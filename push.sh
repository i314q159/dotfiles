#!/usr/bin/bash

read -P "git commit -m:" Commit

git add .

cur_dateTime="`date +%Y-%m-%d,%H:%m:%S`" 
git commit -m "$Commit $cur_dateTime"
# XXX: Make git info less.

git push