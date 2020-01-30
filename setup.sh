#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "This script with copy the configuration files in $DIR to $HOME"
echo "Do you want to continue? (y/n)"
read case
case $case in
	y) 
		echo "Copying files..."
		cp $DIR/.bash* .tmux* .vim* $HOME 
		echo "Done"
	;;
	n) echo "No files copied.";;
esac
