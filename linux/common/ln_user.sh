#!/bin/bash

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

source $script_dir/../../symlink_config.sh $script_dir/home/user/.config/nvim/lua/custom ~/.config/nvim/lua/custom
source $script_dir/../../symlink_config.sh $script_dir/home/user/.zshrc ~/.zshrc
source $script_dir/../../symlink_config.sh $script_dir/home/user/.zsh_aliases ~/.zsh_aliases
