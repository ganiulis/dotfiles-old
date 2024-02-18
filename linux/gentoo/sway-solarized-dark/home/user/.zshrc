HISTSIZE=1000
HISTFILE=~/.histfile
SAVEHIST=1000

source ~/.zplug/init.zsh

zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"

zplug "themes/fletcherm", from:oh-my-zsh, as:theme

zplug load

. ~/.zsh_aliases
