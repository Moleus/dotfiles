export XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-$HOME/.config}"
export ZSH="$XDG_CONFIG_HOME/zsh"
export ZDOTDIR="$ZSH"

# Don't require escaping globbing characters in zsh.
unsetopt nomatch

### ENV setup
export LANG=en_US.UTF-8

export EDITOR=vim
type nvim > /dev/null \
&& export EDITOR=nvim

# Load local env files if it's not remote host
if [[ -z "$SSH_CONNECTION" ]]
then
  for file in ${ZSH}/local/*.zsh 
  do
    source $file
  done
fi

# Load aliases and other sources
for file in ${ZSH}/*.zsh
do
  source $file
done

# initialize autocomplete here, otherwise functions won't be loaded
autoload -Uz compinit
compinit -d ~/.cache/zsh/zcompdump-$ZSH_VERSION


PROMPT="%(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)"
PROMPT+=' %{$fg[cyan]%}%3~%{$reset_color%} $(git_prompt_info)'
export PS1="${PROMPT}"

# move files using glob expressions
autoload zmv

# unique variables only
typeset -U -g PATH path

# if it's remote session
if [[ -n "$PS1"  ]] && [[ -z "$TMUX"  ]] && [[ -n "$SSH_CONNECTION"  ]]; then
  tmux attach-session -t ssh_tmux || tmux new-session -s ssh_tmux
fi
