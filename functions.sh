#!/bin/bash

function get_distro {
	if [ -f /etc/os-release ]; then
		source /etc/os-release

		echo $ID
	else
		uname
	fi
}

function symlink {
	if [ -z $1 ] || [ -z $2 ]; then
		echo "Not enough arguments provided."

		exit
	fi

	local DONOR_DIR=$1
	local TARGET_DIR=$2

	if [ -e $TARGET_DIR ]; then
		if [ -L $TARGET_DIR ]; then
			rm $TARGET_DIR

			echo "Removed current symlink for "$TARGET_DIR
		else
			local OLD_CONFIG_DIR=$TARGET_DIR\_old

			if [ -e $OLD_CONFIG_DIR ]; then
				rm -rf $OLD_CONFIG_DIR
			fi

			mv $TARGET_DIR $OLD_CONFIG_DIR

			echo "Moved existing "$TARGET_DIR" config to "$OLD_CONFIG_DIR
		fi
	fi

	if [ ! -e $TARGET_DIR ]; then
		local TARGET_DIR_PARENT=$(dirname $TARGET_DIR)
		if [ ! -d $TARGET_DIR_PARENT ]; then
			mkdir -p $TARGET_DIR_PARENT

			echo "Created missing directories for "$TARGET_DIR
		fi

		ln -s $DONOR_DIR $TARGET_DIR

		echo "Symlinked configs for "$TARGET_DIR
	fi
}
