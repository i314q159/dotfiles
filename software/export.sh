#!/usr/bin/bash
apt list --installed | cut -d "/" -f 1 > software.txt
