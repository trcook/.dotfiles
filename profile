#! /bin/bash



INVOCATION_ORDER+=('profile')


export INVOCATION_ORDER

function contains(){ local n=$#;local value=${!n}; for ((i=1;i < $#;i++)) do if [ "${!i}" == "${value}" ]; then  echo "y"; return 0;fi; done;echo "n"; return 1;}



if [ $(contains "${INVOCATION_ORDER[@]}" "profile") == "n" ]; then source ~/.bash_profile; fi;


# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*



# Specify defaults for homebrew cask in this environment variable
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/usr/local/Caskroom"




# Other Environment var customization:

export PYTHONPATH=/usr/local/lib/python2.7/site-packages

export PYTHONSTARTUP=~/.pythonrc

if [ -z ${MYPATHSET+x} ];   then ''; else  source ~/.pathsrc; fi;



