alias matrix='echo -e "\e[64m"; while :; do for i in {1..40}; do r="$(($RANDOM % 2))"; if [[ $(($RANDOM % 5)) == 1 ]]; then if [[ $(($RANDOM % 4)) == 1 ]]; then v+="\e[1m $r   "; else v+="\e[2m $r   "; fi; else v+="     "; fi; done; echo -e "$v"; v=""; done'

function removemail() {
  if [ ! -f "/var/mail/$USER" ]; then
    echo -n "no mail"
  else
    cat /var/mail/$USER &&
  	echo -n "delete? (Y/n) : "
  	read answer

  	if [ $answer = "Y" ] ; then
  		sudo rm /var/mail/$USER
  	elif [ $answer = "n" ] || [ -z "$answer" ] ; then
  		echo "Nothing Deleted."
  	fi
  fi
}