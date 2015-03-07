#! /bin/bash

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# Terminal Customization:
# set prompt
export PS1='\#|(\t)\w$'

#set colors
export CLICOLOR="cons25"
#export LSCOLORS=ehfxcxdxbxegedabagacex



# This prints the directory in the tab window
if [ $ITERM_SESSION_ID ]; then
	  export PROMPT_COMMAND='echo -e "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi


# Aliases go here

alias aqua="aquamacs"
alias cdf='cd "$(posd)"'
alias sourcetree="stree"

alias apache2ctl="sudo /opt/local/apache2/bin/apachectl"
alias emacsclient="/Applications/Aquamacs.app/Contents/MacOS/bin/emacsclient"

# Other Environment var customization:

export PYTHONPATH=/usr/local/lib/python2.7/site-packages
#export PATH="/Users/tom/Library/TeX/LocalTeX/texbin:$PATH" # Add texbin for local tex prefpane
#export PATH="/usr/local/share/python:$PATH" # Add RVM to PATH for scripting
export PYTHONSTARTUP=~/.pythonrc


# PATH RELATED COMMANDS

export PATH=$PATH:/Library/Frameworks/Python.framework/Versions/3.4/bin

# Keep this near the end of .profile. It sets path for gui apps in "os x"
launchctl setenv PATH $PATH

