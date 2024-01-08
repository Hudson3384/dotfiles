# Envolviment Variables in App-mobile
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
  
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export LC_ALL=en_US.UTF-8

source ~/.config/ssh-agent.zsh
source /home/hudson/apps/zsh-syntax-highlighting/themes/catppuccin_frappe-zsh-syntax-highlighting.zsh
# use vi mode
set -o vi
bindkey -v

HISTFILE=~/.zsh_history
HISTSIZE=99999999
SAVEHIST=99999999
setopt appendhistory


plugins=(
    zsh-syntax-highlighting
    zsh-autosuggestions
)

alias vim="nvim"
alias zshconfig="vim ~/.zshrc"
alias i3config="vim ~/.config/i3/config"
alias ls='exa --icons'
alias startx='ssh-agent startx'
alias scrot='scrot ~/screenshots/%Y-%m-%d-%T.png'
alias maclanche='ssh maclanche'
alias mobile="cd ~/workspace/repos/app-mobile"
alias web="cd ~/workspace/repos/app-web"
alias ponto="~/.ponto.sh"
alias cerberus="~/.screenlayout/cerberus.sh" 
# git log with graph alias
alias gitl='git log --graph --oneline --all'

#export NODE_OPTIONS=--openssl-legacy-provider

# PATH definitions
export NODEJS_HOME=/opt/nodejs/bin # NodeJS
export HOME_BIN=~/.local/bin # Personal "bin" folder
export RUBY_HOME=~/.local/share/gem/ruby/3.0.0/bin
export CARGO_HOME=~/.cargo/bin:~/.cargo/bin/bin
export COMPOSER_BIN=~/.config/composer/vendor/bin
export YARN_BIN=~/.yarn/bin
export FLUTTER_BIN=/opt/flutter/bin
export PATH=$NODEJS_HOME:$HOME_BIN:$RUBY_HOME:$CARGO_HOME:$COMPOSER_BIN:$YARN_BIN:$FLUTTER_BIN:$PATH

# how to know what keys is each, use: infocmp -L -1
# how to know what commands are available, use: zle -al
bindkey '\e[3~' delete-char #Del
bindkey '^R' history-incremental-search-backward #Ctrl+R
bindkey '\EOH' beginning-of-line #Home
bindkey '\EOF' end-of-line #End
bindkey '\E[5~' up-history #PageUp
bindkey '\E[6~' down-history #PageDown
bindkey '\E[2~' vi-insert #Insert
bindkey '^P' autosuggest-accept # Shift+Tab for accept auto suggestion

# Terminal options
# force alacritty to use xterm-color
export SH=/bin/zsh
export BASH=/bin/zsh
export TERM=xterm-256color
# force i3-sensible-terminal to use alacritty
export TERMINAL=wezterm

# set default editor to vim
export EDITOR=nvim

# source fzf for keybindings, examples:
#"^I" fzf-completion (not working for me :/)
#"^R" fzf-history-widget
#"^T" fzf-file-widget
#"^[c" fzf-cd-widget
source "/usr/share/fzf/key-bindings.zsh"

source  ~/powerlevel10k/powerlevel10k.zsh-theme

# uncoment below if you want yo use starship
#
#eval "$(starship init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

ANDROID_HOME=/opt/android-sdk
PATH=$PATH:$ANDROID_HOME/tools/bin/:$ANDROID_HOME/platform-tools/:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/emulator

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
