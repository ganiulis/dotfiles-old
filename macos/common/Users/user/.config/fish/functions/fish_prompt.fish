function fish_prompt
  echo -s (set_color blue) (__kube_prompt) (set_color $fish_color_cwd) " " (set_color green) (prompt_pwd) (set_color red) (fish_git_prompt) (set_color normal)" \$ "
end
