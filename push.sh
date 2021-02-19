#!/usr/bin/bash

git add .

cur_dateTime="`date +%Y-%m-%d,%H:%m:%S`"
read -P "git commit -m:" Commit 
git commit -m "$Commit $cur_dateTime"
# XXX: Make git info less.

git push