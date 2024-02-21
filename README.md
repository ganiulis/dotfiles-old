# Introduction

Inspired by the various configuration options shared in
[r/unixporn](https://www.reddit.com/r/unixporn/) and the
[unofficial guide to dotfiles on GitHub](https://dotfiles.github.io).

A collection of directories and files meant to serve as templates for my
machines.

I put up specific files under version control which make sense to me, such as
customization or lists of packages.

To keep each template consistent, I pull this repository and `ln -s ...`
specific directories and files.

# Status

Complete templates:

1. [Linux](linux/common)
2. [Gentoo Linux](linux/gentoo)

Future templates (which I may or may not do):

1. [Linux From Scratch](https://www.linuxfromscratch.org/)
2. [macOS Sonoma](https://www.apple.com/macos/sonoma/)
3. [SteamOS](https://store.steampowered.com/steamos)
4. [FreeBSD](https://www.freebsd.org)
5. [Alpine Linux](https://www.alpinelinux.org)
6. [Debian Linux](https://www.debian.org)

# Instructions

Each directory is meant to serve as a building block towards a single working system. Each file and directory matches the file and directory of the target system. 

Setting up a functional system is a three-step process (system files, distribution files, and flavour files). Each top-level system directory includes a `README.md` to describe what's included:

1. Find your system and distribution (eg.: [linux]() and [linux/gentoo]()).
3. Symlink or copy files from `{system}/{distribution}/common` (eg.: [linux/gentoo/common]()) to your system, matching the directory.
4. Symlink or copy files from `{system}/common` (eg.: [linux/common]()) to your system, matching the directory.
5. Choose a flavour` for your GUI (eg.: [linux/gentoo/sway-solarized-dark]()).
6. Symlink or copy files from `{system}/{distribution}/{flavour}` directory to your system, matching the directory.

You can omit any specific configuration file or directory if you know what you're doing.
