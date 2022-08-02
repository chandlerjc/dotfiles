commit () { git commit -am "${1}" && git push; }
fixes () { git commit -am "fixes #${1}" && git push; }

alias a=alias

a issues="gh issue list"
a issue="gh issue create"
a enhancement="gh issue create -l enhancement -b '' -t"
a bug="gh issue create -l bug -b '' -t"
a breaking="gh issue create -l breaking -b '' -t"
a note="gh issue -R jph00/notes create"

alias gitssh="perl -pi -e 's#https://github\.com/#git\@github.com:# if /\[remote \"origin/../fetch =/' .git/config"

a minst="mamba install -c defaults"

a ls="ls -v --color=auto

# # linked data 
# Some handy shortcuts
alias curtle='curl -H "Accept: text/turtle"'
alias curltrig='curl -H "Accept: application/trig"'
alias curltriples='curl -H "Accept: application/n-triples"'
alias curlquads='curl -H "Accept: application/n-quads"'
alias curlson='curl -H "Accept: application/json"'
alias curld='curl -H "Accept: application/ld+json"'"
