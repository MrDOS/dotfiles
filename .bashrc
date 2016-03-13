export PS1='\[\033[36m\]\w\[\033[35m\]$\[\033[0m\] '
export EDITOR='vim'
export PATH="$PATH:~/bin"

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
