source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
#urce '/.oh-my-zsh/oh-my-zsh.sh'
#

ZSH_THEME="powerlevel10k/powerlevel10k"
# Envolviment Variables in App-mobile
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export LC_ALL=en_US.UTF-8

#source ~/.config/ssh-agent.zsh
#source /home/hudson/apps/zsh-syntax-highlighting/themes/catppuccin_frappe-zsh-syntax-highlighting.zsh
# use vi mode
set -o vi
bindkey -v

setopt extended_history hist_no_store hist_ignore_dups hist_expire_dups_first \
       hist_find_no_dups inc_append_history share_history hist_reduce_blanks \
       hist_ignore_space
export HISTTIMEFORMAT="[%F %T] "
HISTFILE=~/.zsh_history
HISTSIZE=99999999999
HISTFILESIZE=99999999999
SAVEHIST=99999999999
HISTORY_IGNORE=clear

plugins+=(
    zsh-vi-mode
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-fzf-history-search
)

#alias php='docker-compose exec app php'
alias vim="nvim"
alias zshconfig="vim ~/.zshrc"
alias i3config="vim ~/.config/i3/config"
alias ls='exa --icons'
alias startx='ssh-agent startx'
alias scrot='scrot ~/screenshots/%Y-%m-%d-%T.png'
alias maclanche='ssh maclanche'
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
export EXERCISM=/home/hudson/bin
export SONAR_SCANNER_HOME=/opt/sonar-scanner/bin
export ANDROID_HOME=/opt/android-sdk
export PATH=$NODEJS_HOME:$HOME_BIN:$RUBY_HOME:$CARGO_HOME:$COMPOSER_BIN:$YARN_BIN:$FLUTTER_BIN:$SONAR_SCANNER_HOME:$PATH

PATH=$PATH:$ANDROID_HOME/tools/bin/:$ANDROID_HOME/platform-tools/:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/emulator:${SONAR_SCANNER_HOME}/:${EXERCISM}

# how to know what keys is each, use: infocmp -L -1
# how to know what commands are available, use: zle -al
#bindkey '\e[3~' delete-char #Del
#bindkey '^R' history-incremental-search-backward #Ctrl+R
#bindkey '\EOH' beginning-of-line #Home
#bindkey '\EOF' end-of-line #End
#bindkey '\E[5~' up-history #PageUp
#bindkey '\E[6~' down-history #PageDown
#bindkey '\E[2~' vi-insert #Insert
#bindkey '^P' autosuggest-accept # Shift+Tab for accept auto suggestion

# Terminal options
# force alacritty to use xterm-color
export SH=/bin/zsh
export BASH=/bin/zsh
export TERM=xterm-256color
export TERMINAL=kitty
export CM_LAUNCHER=rofi
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
eval "$(starship init zsh)"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias open="cd /home/hudson/workspace/open"
alias datetimepicker="cd /home/hudson/workspace/open/datetimepicker"
alias socketproxy="cd /home/hudson/workspace/open/socketproxy"
alias core="cd /home/hudson/workspace/open/app-core"
alias new-mobile="cd /home/hudson/workspace/open/new-mobile"
alias nwapmob="cd /home/hudson/workspace/open/nwapmob"
alias OpenDataCrenter="cd /home/hudson/workspace/open/OpenDataCrenter"
alias site="cd /home/hudson/workspace/open/site"
alias web="cd /home/hudson/workspace/open/app-web"
alias react-md-editor="cd /home/hudson/workspace/open/react-md-editor"
alias frontsocketproxy="cd /home/hudson/workspace/open/frontsocketproxy"
alias mobile="cd /home/hudson/workspace/open/app-mobile"
alias k8s-objects="cd /home/hudson/workspace/open/k8s-objects"
#
## github
alias stef="gh search issues --owner odatacenter --state open --assignee StephanyMil"
alias pedro="gh search issues --owner odatacenter --state open --assignee Pedrofff23"
alias lari="gh search issues --owner odatacenter --state open --assignee Larissamato"
alias rbm="gh search issues --owner odatacenter --state open --assignee rbm0407"
alias hudson="gh search issues --owner odatacenter --state open --assignee hudson3384"
alias speed='curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python -'


zvm_vi_yank () {
	zvm_yank
	printf %s "${CUTBUFFER}" | xclip -sel c
	zvm_exit_visual_mode
}

bindkey '^L' clear-screen
bindkey '^ ' autosuggest-accept
source /home/hudson/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias work="ssh 177.39.16.147 -p 47022"
