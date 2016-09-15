#!/bin/bash

set -u

if [[ $# -lt 1 ]]; then 
	echo "Usage: Must state file name"
	exit 1
fi

FILE=$1


i=0 

	
	while read FILE; do
		
		if [ $i -lt 2 ]; then
	
			let i++
			echo $i $FILE		
		fi
		
done < input.txt


