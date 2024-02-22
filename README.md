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

Future templates (which I may or may not do) are written-up as [milestones](https://github.com/ganiulis/dotfiles/milestones).

# Instructions

Each directory is meant to serve as a building block towards a single working system. Each file and directory matches the file and directory of the target system. 

Setting up a functional system is a three-step process (system files, distribution files, and flavour files). Each top-level system directory includes a `README.md` to describe what's included:

1. Find your system and distribution (eg.: [linux]() and [linux/gentoo]()).
3. Symlink (`ln -s ...`) or copy files (`cp ... ...`) from `{system}/{distribution}/common` (eg.: [linux/gentoo/common]()) to your system, matching the directory.
4. Symlink (`ln -s ...`) or copy files (`cp ... ...`) from `{system}/common` (eg.: [linux/common]()) to your system, matching the directory.
5. Choose a flavour for your GUI (eg.: [linux/gentoo/sway-solarized-dark]()).
6. Symlink (`ln -s ...`) or copy files (`cp ... ...`) from `{system}/{distribution}/{flavour}` directory to your system, matching the directory.

You can omit any specific configuration file or directory if you know what you're doing.
