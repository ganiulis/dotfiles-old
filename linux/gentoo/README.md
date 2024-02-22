# Introduction

My dotfiles for a complete Gentoo system. This system is built on top of a Lenovo ThinkPad P52. Each nested directory matches the directory of the Gentoo system.

There are four world sets: `apps`, `dev`, `sys`, and a `gui` for each flavour.

# Available Flavours

1. [Sway (in Solarized Dark)](sway-solarized-dark)

# Instructions

1. Symlink (`ln -s ...`, or alternatively `cp ... ...`) everything from [common](common). These are the bare essentials.
2. Symlink (`ln -s ...`, or alternatively `cp ... ...`) everything else from a selected directory, such as `sway-solarized-dark`.
