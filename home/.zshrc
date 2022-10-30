# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="/Users/joel/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git z asdf colored-man-pages colorize aws )

## bring in the plugins
#  zsh-syntax-highlighting zsh-autosuggestions
# source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_COLORIZE_TOOL=chroma

SHOW_AWS_PROMPT=false
source $ZSH/oh-my-zsh.sh

# ALIASES

## shared aliases
[ -f $HOME/.aliases ] && . $HOME/.aliases

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
#fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

## GO configuration
export GOBIN="/Users/joel/go/bin/"
export JDH_ROOT="/Users/joel/jdh/"

## PATH
export PATH="$PATH:/Users/joel/go/bin:"
#export PATH="$PATH:/Users/joel/as/bin:"

[ -s "/Users/joel/.scm_breeze/scm_breeze.sh" ] && source "/Users/joel/.scm_breeze/scm_breeze.sh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
