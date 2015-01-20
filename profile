#! /bin/bash


export PS1='\#|(\t)\w$'

export CLICOLOR="cons25"
#export LSCOLORS=ehfxcxdxbxegedabagacex
export PYTHONPATH=/usr/local/lib/python2.7/site-packages
#re-enable this path if necessarry, but it shouldn't be necessarry
#export PATH=/Users/tom/.rvm/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/texbin:/Users/tom/.rvm/bin

alias apache2ctl="sudo /opt/local/apache2/bin/apachectl"
alias emacsclient="/Applications/Aquamacs.app/Contents/MacOS/bin/emacsclient"



export PATH="$PATH:$HOME/.rvm/bin:." # Add RVM to PATH for scripting
export PYTHONSTARTUP=~/.pythonrc
launchctl setenv PATH /Library/Frameworks/Python.framework/Versions/3.4/bin:/Users/tom/.rvm/gems/ruby-2.0.0-p451@global/bin:/Users/tom/.rvm/rubies/ruby-2.0.0-p451/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/opt:/opt/X11/bin:/usr/texbin:/Users/tom/.rvm/bin:/Users/tom/.rvm/bin

# This prints the directory in the tab window
if [ $ITERM_SESSION_ID ]; then
	  export PROMPT_COMMAND='echo -e "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi


# Aliases go here

alias aqua="aquamacs"
alias cdf='cd "$(posd)"'
alias sourcetree="stree"

