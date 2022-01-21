#!/usr/bin/bash
apt list --installed | grep "install" > apt.txt
zap list | cut -d " " -f 2 > zap.txt
