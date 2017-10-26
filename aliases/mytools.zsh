



alias use_php53="brew unlink php54 && brew unlink php55 && brew unlink php53 && brew link php53"
alias use_php54="brew unlink php53 && brew unlink php55 && brew unlink php54 && brew link php54"
alias use_php55="brew unlink php53 && brew unlink php54 && brew unlink php55 && brew link php55"

alias fuck='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
alias frick='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'
alias frack='eval $(thefuck $(fc -ln -1 | tail -n 1)); fc -R'

alias gravserve='php -S localhost:8000 system/router.php'
alias gravupdate='bin/gpm selfupgrade'
alias gpm='bin/gpm '

function deploy() {
	if [[ $1 == "prod"* ]]; then
		cap production deploy --trace		
	else
		cap staging deploy --trace
	fi
}

function isup() { 
	wget -qO - "http://isup.me/$1" | sed '/just you/!d;s/<[^>]*>//g' ; 
}

function whois() {
	local domain=$(echo "$1" | awk -F/ '{print $3}') # get domain from URL
	if [ -z $domain ] ; then
		domain=$1
	fi
	echo "Getting whois record for: $domain …"
	/usr/bin/whois -h whois.internic.net $domain | sed '/NOTICE:/q'
}

alias optimizeimages='find . -name "*.png" -exec pngquant --ext .png --force 256 {} \; || find . -iname "*.jpg" -exec jpegtran -verbose -copy none -optimize -outfile {} {} \;'

function mysqlqueries() {
	echo -n "mysql user: "
	read mysqluser
	echo -n "mysql password: "
	read mysqlpassword
	watch -n 1 mysqladmin --user=$mysqluser --password=$mysqlpassword processlist
}

function wppack() {
	wppackresults=$(curl -L https://z.org/search?q=$1)
	echo $wppackresults
}

alias startheadphones='launchctl load ~/Library/LaunchAgents/homebrew.mxcl.headphones.plist'
alias upgrade-beets='pip install -U beets requests discogs-client munkres unidecode jellyfish musicbrainzngs mutagen enum34 pyyaml six oauthlib'


function chngphp() {
v=$( brew list | grep php )
if [[ "$v" != "$@" ]];then
 echo "$v"
fi;

# brew list | grep php  | while read NAME
#  do echo "$NAME"
# done;

}