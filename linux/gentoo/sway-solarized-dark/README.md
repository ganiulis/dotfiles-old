# Introduction

My [Sway](https://swaywm.org) setup for keyboard-centric development. Built and
tested on a Lenovo ThinkPad P52.

Themed around [Solarized Dark](https://ethanschoonover.com/solarized/) with some
extra colors.

Inspired by the [MacOS Sonoma](https://www.apple.com/macos/sonoma/) interface.

# Instructions

1. Update your Gentoo system.
2. Symlink root user configs with `./ln-root.sh`.
3. Emerge packages as root user with `emerge -avuDN @world`.
4. Download required fonts with `./dl-fonts.sh`.
5. Symlink regular user configs with `./ln-user.sh`.
6. Check if packages were symlinked to their correct spots.

I currently do not have a script for copying configs instead of symlinking them.
I can write one if there's demand for it.

# Configurations

Wayland-specific applications:

1. Bar: [Waybar](https://github.com/Alexays/Waybar)
2. Application launcher: [Wofi](https://hg.sr.ht/~scoopta/wofi)
3. Terminal emulator: [foot](https://codeberg.org/dnkl/foot)
