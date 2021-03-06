#                .__     
# ________  _____|  |__  
# \___   / /  ___/  |  \ 
#  /    /  \___ \|   Y  \
# /_____ \/____  >___|  /
#       \/     \/     \/ 
#


HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt append_history autocd extendedglob inc_append_history share_history
bindkey -e
zstyle :compinstall filename "${HOME}/.zshrc"

zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' menu select

zle -N self-insert url-quote-magic
zle -N bracketed-paste bracketed-paste-magic

autoload -Uz compinit promptinit url-quote-magic bracketed-paste-magic
compinit
promptinit

prompt off

export PATH=$PATH:$HOME/.local/bin

export EDITOR="vim"

source "${HOME}/.zsh/aliasrc"
source "${HOME}/.zsh/keybindings.zsh"
source "${HOME}/.zsh/termsupport.zsh"

if [ -d "$HOME/.zsh/plugins/zsh-completions/src" ]; then
    fpath=($HOME/.zsh/plugins/zsh-completions/src $fpath)
fi

if [ -f "${HOME}/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]; then
    source "${HOME}/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
fi

