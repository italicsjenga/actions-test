#!/usr/bin/env bash

var=0
echo $var
while ! git describe --tags main; do
	var=$((var + 1))
	echo wow
	if ((var > 3)); then
		exit 0
	fi
done
echo done
