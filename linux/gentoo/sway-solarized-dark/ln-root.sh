#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

for TARGET in /etc/portage/sets/gui; do
  if [ -e $TARGET ]; then
    if [ -L $TARGET ]; then
	    rm $TARGET

	    echo 'Removed current symlink for '$TARGET
    else
  	  if [ -e $TARGET-old ]; then
	  	  rm -rf $TARGET-old
	    fi

      mv $TARGET $TARGET-old

	    echo 'Moved existing '$TARGET' config to '$TARGET'-old'
    fi
  fi

  if [ ! -e $TARGET ]; then
	  ln -s $SCRIPT_DIR$TARGET $TARGET

  	echo 'Symlinked configs for '$TARGET
  fi
done
