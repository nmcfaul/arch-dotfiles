#######################
###### SETTINGS #######
#######################

#export TERM="xterm-256color"

# Neovim as the default editor
export VISUAL="nvim"
export EDITOR="nvim"

# History
HISTFILE=~/.zsh-history
HISTSIZE=5000
SAVEHIST=5000

# Options
setopt appendhistory autocd nomatch COMPLETE_ALIASES
unsetopt beep notify

zstyle :compinstall filename '/home/nick/.zshrc'

autoload -Uz compinit
compinit

# Aliases
source ~/.aliases

#####################
###### ANTIGEN ######
#####################

source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle adb
antigen bundle sudo
antigen bundle colored-man-pages
antigen bundle command-not-found

# Completions not yet implemented into ZSH stable
antigen bundle zsh-users/zsh-completions

# `zsh pure` prompt. load order matters
antigen bundle mafredri/zsh-async
#antigen bundle sindresorhus/pure ### original version
antigen bundle tkonolige/pure ### nice fork with basic symbols

# Syntax highlighting bundle. Must load last!
antigen bundle zsh-users/zsh-syntax-highlighting

# Tell antigen that you're done.
antigen apply
