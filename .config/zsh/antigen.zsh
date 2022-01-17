ADOTDIR=$HOME/.local/share/antigen

source ~/.local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle git

# Fuzzy file/history finder
antigen bundle fzf

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# gray command suggestions
antigen bundle zsh-users/zsh-autosuggestions


antigen theme robbyrussell

antigen apply
