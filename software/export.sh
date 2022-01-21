#!/usr/bin/bash
apt list --installed | cut -d "/" -f 1 > apt.txt
zap list | cut -d " " -f 2 > zap.txt
