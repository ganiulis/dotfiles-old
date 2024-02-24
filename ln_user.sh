#!/bin/bash

SCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

source $SCRIPT_DIR/functions.sh

function symlink_user {
	symlink $SCRIPT_DIR$1$2 $HOME$2
}

case $(get_distro) in
gentoo)
	case $1 in
	sway-solarized-dark)
		FLAVOUR_SYSTEM_DIR=$SCRIPT_DIR/linux/gentoo/sway-solarized-dark/home/user

		mkdir -p ~/Wallpapers

		cp $FLAVOUR_SYSTEM_DIR/Wallpapers/* ~/Wallpapers/

		echo "Copied wallpapers."

		if [ "$2" != "--skip-fonts" ]; then
			FONTS_DIR=$FLAVOUR_SYSTEM_DIR/.local/share/fonts

			if [ ! -e $FONTS_DIR/NotoSans ]; then
				wget -O NotoSans.zip https://github.com/notofonts/latin-greek-cyrillic/releases/download/NotoSans-v2.013/NotoSans-v2.013.zip

				unzip -d NotoSansFull NotoSans.zip

				rm NotoSans.zip

				mv $SCRIPT_DIR/NotoSansFull/NotoSans/hinted/ttf $FONTS_DIR/NotoSans

				rm -r $SCRIPT_DIR/NotoSansFull
			fi

			if [ ! -e $FONTS_DIR/Hack ]; then
				wget -O Hack.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Hack.zip

				unzip -d Hack Hack.zip

				rm Hack.zip

				mv $SCRIPT_DIR/Hack $FONTS_DIR/Hack
			fi
		fi

		FLAVOUR_TEMPLATE_FILES=(
			/.config/foot
			/.config/sway
			/.config/waybar
			/.config/wofi
			/.local/share/applications
			/.local/share/fonts
			/.local/share/icons
		)

		for FLAVOUR_TEMPLATE_FILE in ${FLAVOUR_TEMPLATE_FILES[@]}; do
			symlink $FLAVOUR_SYSTEM_DIR$FLAVOUR_TEMPLATE_FILE $HOME$FLAVOUR_TEMPLATE_FILE
		done
		;;
	*)
		echo "Unrecognized flavour or missing argument."

		exit
		;;
	esac

	if command -v nvim &> /dev/null; then
		symlink_user /linux/common/home/user /.config/nvim/lua/custom
	fi

	if command -v zsh &> /dev/null; then
		symlink_user /linux/common/home/user /.zsh_aliases 
		symlink_user /linux/common/home/user /.zshrc
	fi

	if command -v fish &> /dev/null; then
		symlink_user /linux/common/home/user /.config/fish
	fi
	;;
debian)
	if command -v fish &> /dev/null; then
		symlink_user /linux/common/home/user /.config/fish
	fi
	;;
darwin)
	if command -v fish &> /dev/null; then
		symlink_user /macos/common/Users/user /.config/fish
	fi
	;;
*)
	echo "Dotfiles for your machine is not supported."
	;;
esac
