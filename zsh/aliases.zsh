# Don't change. The following determines where YADR is installed.
yadr=$HOME/.yadr

# Get operating system
platform='unknown'
unamestr=$(uname)
if [[ $unamestr == 'Linux' ]]; then
  platform='linux'
elif [[ $unamestr == 'Darwin' ]]; then
  platform='darwin'
fi


# aliases moved to ~/.yadr/aliases/*
if [ -d $HOME/.yadr/aliases ]; then
  for file in $HOME/.yadr/aliases/*.zsh; do
    source $file
  done
fi