commit () { git commit -am "${1}" && git push; }
fixes () { git commit -am "fixes #${1}" && git push; }

alias a=alias

a issues="gh issue list"
a issue="gh issue create"
a enhancement="gh issue create -l enhancement -b '' -t"
a bug="gh issue create -l bug -b '' -t"
a breaking="gh issue create -l breaking -b '' -t"
# a note="gh issue -R charlesvardeman/notes create"

alias gitssh="perl -pi -e 's#https://github\.com/#git\@github.com:# if /\[remote \"origin/../fetch =/' .git/config"

a minst="mamba install -c defaults"

a jl="jupyter lab  --no-browser --port=8889"

alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

a grep='grep  --color=auto --exclude-dir={.git}'
a ls='ls -v --color=auto'
a ll="ls -l"
a l="ls -CF"
a ip='ipython --no-banner'
a pip-update="pip install --upgrade pip && pip freeze --local | grep -v \
  '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U"
a pi="pip install -U --user"
a nvi="nvidia-smi"
a nvdm="nvidia-smi dmon"

alias latex-update="tlmgr update --self --all --reinstall-forcibly-removed"
alias py="python"
alias jn='jupyter notebook'
alias jl='jupyter lab'
alias preview="open -a /Applications/Preview.app"



alias sudo='sudo -E'  # Use current user configs

alias curtle='curl -H "Accept: text/turtle"'
alias curltrig='curl -H "Accept: application/trig"'
alias curltriples='curl -H "Accept: application/n-triples"'
alias curlquads='curl -H "Accept: application/n-quads"'
alias curlson='curl -H "Accept: application/json"'
alias curld='curl -H "Accept: application/ld+json"'


# N-Triples aliases from http://blog.datagraph.org/2010/03/grepping-ntriples
alias rdf-count="awk '/^\s*[^#]/ { n += 1 } END { print n }'"
alias rdf-lengths="awk '/^\s*[^#]/ { print length }'"
alias rdf-length-avg="awk '/^\s*[^#]/ { n += 1; s += length } END { print s/n }'"
alias rdf-length-max="awk 'BEGIN { n=0 } /^\s*[^#]/ { if (length>n) n=length } END { print n }'"
alias rdf-length-min="awk 'BEGIN { n=1e9 } /^\s*[^#]/ { if (length>0 && length<n) n=length } END { print (n<1e9 ? n : 0) }'"
alias rdf-subjects="awk '/^\s*[^#]/ { print \$1 }' | uniq"
alias rdf-predicates="awk '/^\s*[^#]/ { print \$2 }' | uniq"
alias rdf-objects="awk '/^\s*[^#]/ { ORS=\"\"; for (i=3;i<=NF-1;i++) print \$i \" \"; print \"\n\" }' | uniq"
alias rdf-datatypes="awk -F'\x5E' '/\"\^\^</ { print substr(\$3, 2, length(\$3)-4) }' | uniq"

# Shortcuts for CRC machines ##################################################
#Some useful EXPORTs
export CRC="crc.nd.edu"
export FE1="crcfe01.$CRC"
export FE2="crcfe02.$CRC"
export CAML="caml.$CRC"
export JLC="jupyter-caml.$CRC"

# and corresponding ALIASes
alias fe1="ssh $FE1"
alias caml="ssh $CAML"
alias jlc="ssh $JLC"

# with X forwarding
alias fe1x="ssh -Y $FE1"

