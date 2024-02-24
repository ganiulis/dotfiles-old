#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]; then
	echo "Not enough arguments provided."

	exit
fi

template_dir=$1
target_dir=$2

if [ -e $target_dir ]; then
	if [ -L $target_dir ]; then
		rm $target_dir

		echo "Removed current symlink for "$target_dir
	else
		old_config=$target_dir\_old

		if [ -e $old_config ]; then
			rm -rf $old_config
		fi

		mv $target_dir $old_config

		echo "Moved existing "$target_dir" config to "$old_config
	fi
fi

if [ ! -e $target_dir ]; then
	ln -s $template_dir $target_dir

	echo "Symlinked configs for "$target_dir
fi
