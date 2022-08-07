if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g -x fish_greeting ''


# STARSHIP
starship init fish | source


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/ragil/anaconda3/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

# if tpe rg &> /dev/null; then
#   export FZF_DEFAULT_COMMAND='rg --files'
#   export FZF_DEFAULT_OPTS='-m'
# fiy

# alias for configuring dotfiles

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
