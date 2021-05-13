# Setup fzf
# ---------
if [[ ! "$PATH" == */home/vad63799/.fzf/bin* ]]; then
  export PATH="$PATH:/home/vad63799/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/vad63799/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/vad63799/.fzf/shell/key-bindings.bash"

