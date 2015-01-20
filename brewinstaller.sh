#! /bin/bash
# If haven't done already: Grab the dotfiles repo from git: 
# git clone https://github.com/trcook/.dotfiles.git ~/.dotfiles
# ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"	


# Critical
brew tap caskroom/cask
brew install caskroom/cask/brew-cask
brew tap homebrew/dupes
brew tap thoughtbot/formulae
brew install rcm

brew install git


# Misc
brew install boxes

brew install npm
