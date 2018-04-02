mainc="2"
sidec="$((mainc + 8))"

export PATH="$HOME/go/bin:$PATH"

# History
export HISTSIZE=5000
export HISTFILE="$HOME/.zsh-history"
export SAVEHIST=5000

setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE

# Options
setopt appendhistory autocd nomatch COMPLETE_ALIASES
unsetopt beep notify

# env
export VISUAL="vim"
export EDITOR="vim"
export GREP_COLOR="0;3${mainc}"

export VIRSH_DEFAULT_CONNECT_URI="qemu+ssh://root@192.168.30.25/system"
export KUBECONFIG=$HOME/.kube/config:$HOME/.kube/aks-cluster

#---[colored man]--------------------------------------------------------------
export LESS_TERMCAP_mb=$(printf "\e[0;3${mainc}m")    # start blink
export LESS_TERMCAP_md=$(printf "\e[0;3${mainc}m")    # start bold
export LESS_TERMCAP_so=$(printf "\e[7;3${mainc}m")    # start standout
export LESS_TERMCAP_us=$(printf "\e[1;4;3${mainc}m")  # start underline
export LESS_TERMCAP_me=$(printf "\e[0m")              # stop blink, bold
export LESS_TERMCAP_se=$(printf "\e[0m")              # stop standout
export LESS_TERMCAP_ue=$(printf "\e[0m")              # stop underline

#---[autoload]-----------------------------------------------------------------
autoload -U compinit && compinit
autoload -U colors && colors

#---[case insensitive completion]--------------------------------------------
zstyle ':completion:*' menu select=2
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

#####################
###### ANTIGEN ######
#####################

source $HOME/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle adb
antigen bundle sudo
antigen bundle colored-man-pages
antigen bundle command-not-found
antigen bundle subnixr/minimal
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-syntax-highlighting
antigen apply

# Aliases
source $HOME/.aliases
