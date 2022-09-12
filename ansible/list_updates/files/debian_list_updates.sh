#!/bin/sh

apt update > /dev/null 2>&1 && apt list --upgradable 2>/dev/null |\
	grep -v ^Listing | awk '{print $1,$2}' | sed 's|/.* |=|g' | sort
