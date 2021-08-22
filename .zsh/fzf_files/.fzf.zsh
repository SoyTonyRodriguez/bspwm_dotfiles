# Setup fzf
# ---------
if [[ ! "$PATH" == */home/tony/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/tony/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/tony/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/tony/.fzf/shell/key-bindings.zsh"
