#!/bin/bash

script_dir=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)

template_files=(
	/etc/portage/binrepos.conf
	/etc/portage/make.conf
	/etc/portage/package.accept_keywords
	/etc/portage/package.license
	/etc/portage/package.mask
	/etc/portage/package.unmask
	/etc/portage/package.use
	/etc/portage/repos.conf
	/etc/portage/sets/gui
)

for template_file in ${template_files[@]}; do
	source $script_dir/../../../symlink_config.sh $script_dir$template_file $template_file
done
