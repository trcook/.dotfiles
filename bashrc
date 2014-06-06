
 function tvim(){ tmux new-session "vim $@" ; }
export TERM="screen-256color"
alias tmux="tmux -2"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting