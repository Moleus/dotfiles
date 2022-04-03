alias v="nvim"
alias sv="sudo nvim"
alias vim="nvim"
# open vimrc config
alias cfv="nvim ~/.config/nvim/init.lua"
# open zshrc config
alias cfz="nvim ~/.config/zsh/.zshrc && source ~/.config/zsh/.zshrc && echo 'zsh reloaded'"
# open i3 session config
alias cfi="nvim ~/.config/i3/config"
# open tmux config
alias cft="nvim ~/.config/tmux/tmux.conf"

# attach existing tmux session or create new
alias tm="tmux attach-session -t main_tmux || tmux new-session -s main_tmux"

alias config='/usr/bin/git --git-dir=$HOME/.cfg.git/ --work-tree=$HOME'

alias cc="cd ~/.config"
alias cs="cd ~/.local/bin/scripts"
alias cz="cd ~/.config/zsh"
alias cv="cd ~/.config/nvim"
