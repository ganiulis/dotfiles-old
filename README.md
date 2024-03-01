# Introduction

Inspired by the various configuration options shared in
[r/unixporn](https://www.reddit.com/r/unixporn/) and the
[unofficial guide to dotfiles on GitHub](https://dotfiles.github.io).

A collection of directories and files meant to serve as templates for my
machines.

I put up specific files under version control which make sense to me, such as
customization or lists of packages.

# Status

Available templates:

1. [Debian Linux](https://www.debian.org/)
2. [Gentoo Linux](https://www.gentoo.org/) with [SwayWM](https://swaywm.org/) in [Solarized Dark](https://ethanschoonover.com/solarized/) (`sway-solarized-dark`)
3. [macOS](https://www.apple.com/macos/common/)

Future templates (which I may or may not do) are written-up as [milestones](https://github.com/ganiulis/dotfiles/milestones).

# Instructions

Each directory is meant to serve as a building block towards a single working system. Each file and directory matches the file and directory of the target system. 

Setting up a functional system is a three-step process (system files, distribution files, and flavour files). Each top-level system directory includes a `README.md` to describe what's included.

You can omit any specific configuration file or directory if you know what you're doing. You can explore each directory to find a configuration file you may like and just copy it into your own system.

1. Select an available flavour for your distribution and system.
2. Run `sudo ./ln_root.sh ...` with your chosen flavour (eg.:`sway-solarized-dark`). The script auto-detects your OS.
3. Update your system packages.
4. Run `./ln_user.sh ...` with your chosen flavour.
5. Reload your system.

This method symlinks all configurations together. If there is a demand I will put up a `cp` version.

