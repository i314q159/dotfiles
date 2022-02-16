#!/usr/bin/bash
apt list --installed | grep "install" | cut -d "/" -f 1 > apt.txt
