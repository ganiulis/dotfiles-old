# Introduction

My dotfiles for a complete Gentoo system. Each nested directory matches the directory of the Gentoo system.

There are four world sets: `apps`, `dev`, `sys`, and a `gui` for each flavour.

# Available Flavours

1. [Sway (Solarized Dark)](linux/gentoo/sway-solarized-dark)

# Instructions

1. Symlink (`ln -s ...`, or alternatively `cp ... ...`) everything from `common`. This is the base.
2. Symlink (`ln -s ...`, or alternatively `cp ... ...`) everything else from a selected directory, such as `sway-solarized-dark`.