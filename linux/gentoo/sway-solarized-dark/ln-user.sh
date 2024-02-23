#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

for APP in .config/foot .config/sway .config/waybar .config/wofi .local/share/applications .local/share/fonts .local/share/icons; do
  CONFIG_DIR=$SCRIPT_DIR/home/user/$APP
  TARGET_DIR=~/$APP

  if [ -e $TARGET_DIR ]; then
    if [ -L $TARGET_DIR ]; then
	    rm $TARGET_DIR

	    echo 'Removed current symlink for '$TARGET_DIR
    else
  	  if [ -e $TARGET_DIR-old ]; then
	  	  rm -rf $TARGET_DIR-old
	    fi

      mv $TARGET_DIR $TARGET_DIR-old

	    echo 'Moved existing '$TARGET_DIR' config to '$TARGET_DIR'-old'
    fi
  fi

  if [ ! -e $TARGET_DIR ]; then
	  ln -s $CONFIG_DIR $TARGET_DIR

  	echo 'Symlinked configs for '$TARGET_DIR
  fi
done

mkdir -p ~/Wallpapers

cp $SCRIPT_DIR/home/user/Wallpapers/* ~/Wallpapers/

echo 'Copied wallpapers'
