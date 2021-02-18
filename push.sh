#!/usr/bin/bash

git add .

cur_dateTime="`date +%Y-%m-%d,%H:%m:%S`"
git commit -m "update $cur_dateTime"

git push