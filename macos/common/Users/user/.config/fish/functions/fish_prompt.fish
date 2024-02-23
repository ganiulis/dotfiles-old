function fish_prompt
  echo -s (set_color bryellow) (whoami) " " (set_color brgreen) (prompt_pwd) (set_color brred) (fish_git_prompt) " " (set_color brblue) (__kube_prompt)  (set_color $fish_color_normal)"> "
end
