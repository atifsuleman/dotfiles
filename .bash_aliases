# alias for playing music in shuffle mode 
alias playmusic='for f in $(ls ~/music/*.mp3 | shuf); do echo "Playing: $f";omxplayer -p --vol -1800 -o hdmi $f; done'

# some more ls aliases
alias ll='ls -l'
alias la='ll -a'

alias cls=clear
