
# Common shell functions
alias less='less -r'
alias tf='tail -f'
alias l='less'
alias lh='ls -alt | head' # see the last modified files
alias screen='TERM=screen screen'
alias cl='clear'


# PS
alias psa="ps aux"
alias processes-show="ps aux"
alias psg="ps aux | grep "
alias processes-search="ps aux | grep "


function killit() {
	killall -15 $1 || killall -9 $1
}
# kill process search
function kp() {
  ps aux | grep $1 > /dev/null
  mypid=$(pidof $1)
  if [ "$mypid" != "" ]; then
    kill -9 $(pidof $1)
    if [[ "$?" == "0" ]]; then
      echo "PID $mypid ($1) killed."
    fi
  else
    echo "None killed."
  fi
  return;
}

alias cat='ccat --bg=light --color=always -G String="_teal_"'

# Show human friendly numbers and colors
alias df='df -h'
alias disk-space='df -h'
alias du='du -h -d 2'
alias disk-space-list='du -h -d 2'


# Moving around
alias cdb='cd -'
alias cls='clear;ls'

alias ls='ls -lla'

#make a directory and move into it
function md() {
	mkdir -p "$@" && cd "$@"
}

alias .1='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias ll='ls -lGFhart'
# show me files matching "ls grep"
alias lsg='ll | grep'


alias open.='open .'
alias opn.='open .'
alias opn='open .'


alias replacetext='find ./ -type f -exec sed -i "" -e "s/$1/$2/g" {} \;'
alias findfiles='find . -type f -name "$@"'
alias findfilesandremove='find . -type f -name "$@" -exec rm -f {} \;'

function replaceword() {
	find . -type f -print0 | xargs -0 sed -i "" -e "s/$1/$2/g"
}

# Makes sure you don't mess nuthin up
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'

function chmodfiles() {
	find . -type f -exec chmod $1 {} \
}
function chmodfolders() {
	find . -type d -exec chmod $1 {} \
}


# Makes pretty colors by default
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# Zippin
alias gz='tar -zcvf'
alias password-protect='zip -e '
alias fixzip='zip -FF $@ --out fixedzip && unzip fixedzip.zip && rm fixedzip.zip'