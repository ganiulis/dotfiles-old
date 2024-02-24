#!/bin/bash

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

declare -a template_files=(
	/etc/portage/sets/apps
	/etc/portage/sets/dev
	/etc/portage/sets/sys
	/var/lib/portage/world
	/var/lib/portage/world_sets
)

for template_file in ${template_files[@]}; do
	source $script_dir/../../../symlink_config.sh $script_dir$template_file $template_file
done
