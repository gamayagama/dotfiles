# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v

export EDITOR=nvim
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/fmrh/.zshrc'

# Enable autocompletion
autoload -Uz compinit
compinit

# Path
path+=('/home/gama/public/.dotfiles/.bin')
export PATH


# Prompt 
autoload -Uz promptinit
promptinit
eval "$(starship init zsh)"

# Alias
alias ls='ls -lAh --color=auto'
alias vim='nvim'
alias vi='nvim'
alias cat='bat'
alias fd='fzf'
alias find='fzf'
