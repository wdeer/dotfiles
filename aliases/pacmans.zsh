alias composer-global="composer global require"

alias bower='bower install --save '
alias bower-dev='bower install --save-dev '

alias pipupgradeall='pip freeze --local | grep -v "^\-e" | cut -d = -f 1  | xargs pip install -U'