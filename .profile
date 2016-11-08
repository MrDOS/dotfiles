export PS1='\[\033[36m\]\W\[\033[35m\]$\[\033[0m\] '
export PATH=~/bin:~/.cargo/bin:/usr/local/sbin:/usr/local/bin:$PATH:/Library/PostgreSQL/9.4/bin
export GOPATH=~/Projects/go
export EDITOR='vim'
export PAGER='vimpager'

source .profile-credentials

export PATH="/Users/scoleman/perl5/bin${PATH:+:${PATH}}"
export PERL5LIB="/Users/scoleman/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"
export PERL_LOCAL_LIB_ROOT="/Users/scoleman/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"
export PERL_MB_OPT="--install_base \"/Users/scoleman/perl5\""
export PERL_MM_OPT="INSTALL_BASE=/Users/scoleman/perl5"

# Doesn't like being an alias for some reason.
json ()
{
    python -m json.tool
}

view-json ()
{
    <"$1" json | subl
}

psg ()
{
    ps aux | grep "$1" | grep -v grep
}

youtube-play ()
{
    youtube-dl -f bestaudio -o - "$1" | ffplay -autoexit -nodisp -
}

alias ls='ls -G'
alias grep='grep --color'
alias rsync='rsync -av --progress'

alias youtube-dl-hd='youtube-dl -f bestvideo+bestaudio'
alias ffplay='ffplay -autoexit'
alias ffaudio='ffplay -autoexit -nodisp'

alias enqueue-deadly='enqueue-torrents deadly'
alias retrieve-deadly='retrieve-torrent deadly'
alias completed-deadly='completed-torrents deadly'
alias sync-files='sync-completed files'

# If Upcheck exists on this machine and is doing its thing as a corn job, spit
# out everything after the ASCII logo preamble.
if [ -r ~/.upcheck-last ]
then
    echo
    tail +7 .upcheck-last
fi
