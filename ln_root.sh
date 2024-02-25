#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

source $SCRIPT_DIR/functions.sh

case $(get_distro) in
gentoo)
	case $1 in
	sway-solarized-dark)
		FLAVOUR_SYSTEM_DIR=$SCRIPT_DIR/linux/gentoo/sway-solarized-dark
		FLAVOUR_TEMPLATE_FILES=(
			/etc/portage/make.conf
			/etc/portage/package.accept_keywords
			/etc/portage/package.license
			/etc/portage/package.mask
			/etc/portage/package.unmask
			/etc/portage/package.use/conflicts
			/etc/portage/package.use/intentional
			/etc/portage/repos.conf
			/etc/portage/sets/gui
		)

		for FLAVOUR_TEMPLATE_FILE in ${FLAVOUR_TEMPLATE_FILES[@]}; do
			symlink $FLAVOUR_SYSTEM_DIR$FLAVOUR_TEMPLATE_FILE $FLAVOUR_TEMPLATE_FILE
		done
		;;
	*)
		echo "Unrecognized flavour or missing argument."

		exit
		;;
	esac

	DISTRO_SYSTEM_DIR=$SCRIPT_DIR/linux/gentoo/common
	DISTRO_TEMPLATE_FILES=(
		/etc/portage/binrepos.conf
		/etc/portage/package.use/global
		/etc/portage/sets/apps
		/etc/portage/sets/dev
		/etc/portage/sets/sys
		/var/lib/portage/world
		/var/lib/portage/world_sets
	)

	for COMMON_TEMPLATE_FILE in ${DISTRO_TEMPLATE_FILES[@]}; do
		symlink $DISTRO_SYSTEM_DIR$COMMON_TEMPLATE_FILE $COMMON_TEMPLATE_FILE
	done

	sudo emaint sync
	sudo emerge -avuDN --with-bdeps=y @world
	sudo emerge -ac
	;;
debian)
	sudo apt update
	sudo apt upgrade
	sudo apt install fish vim
	sudo apt remove nano
	sudo apt autoremove
	;;
darwin)
	echo "Nothing to be done."
	;;
*)
	echo "Dotfiles for your machine is not supported."
	;;
esac
