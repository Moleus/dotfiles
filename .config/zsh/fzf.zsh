### fzf

# tmux pane
export FZF_TMUX=1

# preview file content
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"

# default search command
export FZF_DEFAULT_COMMAND="fd --hidden --exclude .git . $HOME"
export FZF_DEFAULT_COMMAND="fd --exclude .git . $HOME"

export FZF_ALT_C_COMMAND="fd --hidden -t d . $HOME"
###

