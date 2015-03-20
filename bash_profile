#! /bin/bash

INVOCATION_ORDER+=('bash_profile')
export INVOCATION_ORDER


# This prints the directory in the tab window
if [ $ITERM_SESSION_ID ]; then
	  export PROMPT_COMMAND='echo -e "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi

# This function checks through an array of vars. This lets us work out an ordering for startup files that fits our demands


function contains(){ local n=$#;local value=${!n}; for ((i=1;i < $#;i++)) do if [ "${!i}" == "${value}" ]; then  echo "y"; return 0;fi; done;echo "n"; return 1;}

# Run the function over profile and bashrc
if [ $(contains "${INVOCATION_ORDER[@]}" "proile") == "n" ]; then source ~/.profile; fi;
if [ $(contains "${INVOCATION_ORDER[@]}" "bashrc") == "n" ];  then source ~/.bashrc; fi;





# Things that must run after path gets set go here. Note that this does not mean it will be the last thing that is run in startup. That is determined by the byzentene start-ordering for BASH. Lines after this should be tolerant of running multiple times (or having path altered (though not modified))

export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
source /usr/local/bin/virtualenvwrapper_lazy.sh

