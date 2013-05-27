# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -AlhF'
alias la='ls -A'
alias l='ls -CF'

alias py='python'

alias filecount='echo "$(ls -1 $* | wc -l) files"'

alias user='echo $USERNAME@$HOSTNAME'
alias up='updir'
alias octave='/opt/octave34/bin/octave'
alias davmail='/opt/davmail/davmail.sh /opt/davmail/davmail.properties'
alias cdd='cd ..'
alias home='cd ~/'
alias copydir='echo "$PWD" | xclip'
alias cdclip='cd `xclip -o`'
alias tcfav='truecrypt --auto-mount=favorites'
alias umount-tc='truecrypt -d'

alias cpu-set-performance='setgov performance'
alias cpu-set-ondemand='setgov ondemand'

alias vless='vim -u /usr/share/vim/vim73/macros/less.vim'
