# Homebrew
alias bup='brew update && brew upgrade'
alias bclean='brew cleanup && brew prune && brew doctor'

alias bd='brew doctor'
alias bs='brew search'
alias bh='brew home'
alias bi='brew install'
alias bu='brew update && brew outdated'
alias bo='brew update && brew outdated'

alias bcs='brew cask search'
alias bch='brew cask home'
alias bci='brew cask install $@ --force'
alias bcr='brew cask remove'

alias brewclean='brew prune && brew cleanup && rm -rf /Users/wdeer/Library/Caches/Homebrew/*.* && rm -rf /Users/wdeer/Library/Caches/Homebrew/Cask/*.*'

alias bsrvup="brew service start"
alias bsrvdn="brew service stop"