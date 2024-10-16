# Setup fzf
# ---------
if [[ ! "$PATH" == */home/hudson/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/hudson/.fzf/bin"
fi

source <(fzf --zsh)
