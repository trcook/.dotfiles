source ~/.profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*



# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
export PATH

# Specify defaults for homebrew cask in this environment variable
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/usr/local/Caskroom"


## Setting path for global GUI:
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PYTHONSTARTUP=~/.pythonrc
launchctl setenv PATH /Library/Frameworks/Python.framework/Versions/3.4/bin:/Users/tom/.rvm/gems/ruby-2.0.0-p451@global/bin:/Users/tom/.rvm/rubies/ruby-2.0.0-p451/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/opt:/opt/X11/bin:/usr/texbin:/Users/tom/.rvm/bin:/Users/tom/.rvm/bin