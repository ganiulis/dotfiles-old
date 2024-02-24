#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
CONFIG_DIR=$SCRIPT_DIR/Users/user/.config/fish
TARGET_DIR=~/.config/fish

if [ -L $TARGET_DIR ]; then
	rm $TARGET_DIR

	echo 'Removed current symlink.'
fi

if [ -e $TARGET_DIR ]; then
	if [ -e $TARGET_DIR-old ]; then
		rm -rf $TARGET_DIR-old
	fi

	mv $TARGET_DIR $TARGET_DIR-old

	echo 'Moved existing config to '$TARGET_DIR'-old'
fi

if [ ! -e $TARGET_DIR ]; then
	ln -s $CONFIG_DIR $TARGET_DIR

	echo 'Symlinked configs.'
fi
