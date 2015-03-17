#! /bin/bash


INVOCATION_ORDER+=('bashrc')
export INVOCATION_ORDER



function contains(){ local n=$#;local value=${!n}; for ((i=1;i < $#;i++)) do if [ "${!i}" == "${value}" ]; then  echo "y"; return 0;fi; done;echo "n"; return 1;}

# Tell bash to invoke bash_profile first
if [ $(contains "${INVOCATION_ORDER[@]}" "bash_profile") == "n" ]; then source ~/.bash_profile; fi;


# If for some reason, bash_profile doesn't get run, this will run the paths file
if [ -z ${MYPATHSET+x} ];   then ''; else  source ~/.pathsrc; fi;


function tvim(){ tmux new-session "vim $@" ; }
export TERM="screen-256color"
alias tmux="tmux -2"





# Terminal Customization:
# set prompt


export PS1='\n\[\e[1;31m\]_______________________________________\[\e[1;31m\]\n\w\n\n\[\e[1;30m\]\#|(\t)\[\e[1;31m\]$\[\e[47;1;30m\]'



export PS2='(...):'
# To get full directory
# export PS1='\#|(\t)\w$'

#set colors
export CLICOLOR="cons25"
#export LSCOLORS=ehfxcxdxbxegedabagacex



# Aliases go here

alias aqua="aquamacs"
alias cdf='cd "$(posd)"'
alias sourcetree="stree"

alias apache2ctl="sudo /opt/local/apache2/bin/apachectl"
alias emacsclient="/Applications/Aquamacs.app/Contents/MacOS/bin/emacsclient"


complete -C aws_completer aws
