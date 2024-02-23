#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

for APP in foot sway waybar wofi; do
  CONFIG_DIR=$SCRIPT_DIR/home/user/.config/$APP
  TARGET_DIR=~/.config/$APP

  if [ -e $TARGET_DIR ]; then
    if [ -L $TARGET_DIR ]; then
	    rm $TARGET_DIR

	    echo 'Removed current symlink for '$APP
    else
  	  if [ -e $TARGET_DIR-old ]; then
	  	  rm -rf $TARGET_DIR-old
	    fi

      mv $TARGET_DIR $TARGET_DIR-old

	    echo 'Moved existing '$APP' config to '$TARGET_DIR'-old'
    fi
  fi

  if [ ! -e $TARGET_DIR ]; then
	  ln -s $CONFIG_DIR $TARGET_DIR

  	echo 'Symlinked configs for '$APP
  fi
done
