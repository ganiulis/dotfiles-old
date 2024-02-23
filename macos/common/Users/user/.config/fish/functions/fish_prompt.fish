function fish_prompt
    echo -s (set_color yellow) (whoami) " " (set_color green) (prompt_pwd) (set_color red) (fish_git_prompt) " " (set_color $fish_color_normal)"> "
end

function fish_right_prompt
    echo -s (set_color blue) (__kube_prompt) (set_color normal) " " (date +'%m-%d %T')
end
