fpath=($ZDOTDIR/external $fpath)

source "$XDG_CONFIG_HOME/zsh/aliases"

setopt AUTO_PARAM_SLASH
unsetopt CASE_GLOB

setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS


# Push the current directory visited on to the stack.
setopt AUTO_PUSHD
# Do not store duplicate directories in the stack
setopt PUSHD_IGNORE_DUPS
# Do not print the directory stack after using
setopt PUSHD_SILENT

if [ $(command -v "fzf") ]; then
    source /usr/share/fzf/completion.zsh
    source /usr/share/fzf/key-bindings.zsh
fi

# Start i3 on bootup
if [ "$(tty)" = "/dev/tty1" ];
then
    pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi

# VI like settings

bindkey -v
export KEYTIMEOUT=1

source $DOTFILES/zsh/scripts.sh

zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

autoload -Uz edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

autoload -Uz cursor_mode && cursor_mode

source ~/.dotfiles/zsh/external/bd.zsh

autoload -Uz prompt_purification_setup; prompt_purification_setup

autoload -Uz compinit; compinit
_comp_options+=(globdots) # completes hidden files
source ~/.dotfiles/zsh/external/completion.zsh

# Zsh Syntax Highlighting (must be at bottom)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
