#!/usr/bin/bash

git add .

cur_dateTime="`date +%Y-%m-%d,%H:%m:%s`"
git commit -m "update $cur_dateTime"

git push