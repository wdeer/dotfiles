# DELETE ALL THE FUCKING .DS_Store files in the current directory and below!!!!
alias ds_store="find . -name '*.DS_Store*' -type f -delete"
alias fuckdsstore="find . -name '*.DS_Store*' -type f -delete"
alias removeds_store="find . -name '*.DS_Store*' -type f -delete"


alias lscleanup='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'
alias flush='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder'
alias cleanup='sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* "delete from LSQuarantineEvent"'