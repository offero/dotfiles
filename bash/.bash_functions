# custom bash functions

updir(){
    if [ $# -gt 0 ];then
        path=""
        for (( i=1; i<=$1; i++ )); do
            path=$path"../"
        done
        cd $path
    else
        cd ../
    fi
}

calc(){ python -c "from math import *; print($*);" ;}

function lf
{
    ls --color=tty --classify $*
    echo "$(ls -l $* | wc -l) files"
}

##################
#extract files eg: ex tarball.tar#
##################
unpack() {
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)   tar xjf $1        ;;
            *.tar.gz)    tar xzf $1     ;;
            *.bz2)       bunzip2 $1       ;;
            *.rar)       rar x $1     ;;
            *.gz)        gunzip $1     ;;
            *.tar)       tar xf $1        ;;
            *.tbz2)      tar xjf $1      ;;
            *.tgz)       tar xzf $1       ;;
            *.zip)       unzip $1     ;;
            *.Z)         uncompress $1  ;;
            *.7z)        7z x $1    ;;
            *)           echo "'$1' cannot be extracted via extract()" ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

function setgov()
{
    for i in 0 1 2 3
    do
        cpufreq-selector -c $i -g "$1"
    done
}

