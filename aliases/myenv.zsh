alias openfortivpn="sudo openfortivpn -c ~/.openfortivpn/config"
alias tpvpn="sudo openfortivpn -c ~/.openfortivpn/config"

alias MYKEY='cat ~/.ssh/id_rsa.pub'
alias id_rsa='cat ~/.ssh/id_rsa.pub'

alias known_hosts='nano ~/.ssh/known_hosts'

alias MYSSH='cat ~/.ssh/config'
alias SSHHOSTS='grep "Host " ~/.ssh/config'

alias PATH='echo "${PATH//:/\n}"'
alias MYPATH='echo "${PATH//:/\n}"'
alias MYSHELL='which $SHELL'

alias MYZSH='cat "~/.zsh$rc"'


# zsh profile editing
alias ze='vim ~/.zshrc'

alias rackham-vnc='ssh -L 5901:127.0.0.1:5901 rackham@rackham.local "vncserver :1"'

# EDIT some key files
alias vhosts='open /private/etc/apache2/vhosts'
alias host='mate /private/etc/hosts'
alias sshconfig='mate ~/.ssh/config'

alias sshhosts='grep "Host " ~/.ssh/config'


function keygen() {
	echo -n "what is your email address?"
	read email
	cd ~/.ssh && ssh-keygen -t rsa -b 4096 -C "$email"
}