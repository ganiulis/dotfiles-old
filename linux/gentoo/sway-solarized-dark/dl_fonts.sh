#!/bin/bash

dCRIPT_DIR=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)
FONTS_DIR=$SCRIPT_DIR/home/user/.local/share/fonts

wget -O NotoSans.zip https://github.com/notofonts/latin-greek-cyrillic/releases/download/NotoSans-v2.013/NotoSans-v2.013.zip

unzip -d NotoSansFull NotoSans.zip

rm NotoSans.zip

mv $SCRIPT_DIR/NotoSansFull/NotoSans/hinted/ttf $FONTS_DIR/NotoSans

rm -r $SCRIPT_DIR/NotoSansFull

wget -O Hack.zip https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/Hack.zip

unzip -d Hack Hack.zip

rm Hack.zip

mv $SCRIPT_DIR/Hack $FONTS_DIR/Hack
