# TODO:
#   Virtual Env
#   Bash aliases, functions, rc
#   .Xresources for urxvt

#####################################
# rxvt-unicode with perl extensions #
#####################################
# if on ubuntu
# sudo apt-get install rxvt-unicode-256color xsel
# pip install jedi pylama
PERLLIBDIR=$HOME/.local/lib/urxvt/perl
mkdir -p $PERLLIBDIR

for ext in clipboard keyboard-select url-select; do
    if [ ! -e $PERLLIBDIR/$ext ]; then
        ln -s $(pwd)/urxvt/urxvt-perls.git/$ext $PERLIBDIR/$ext
    fi
done;

################
# Custom fonts #
################

LOCALFONTSDIR=$HOME/.local/share/fonts
mkdir -p $LOCALFONTSDIR

if [ ! -e $LOCALFONTSDIR/monaco.ttf ]; then
    ln -s $(pwd)/fonts/monaco.ttf $LOCALFONTSDIR/monaco.ttf
fi

fc-cache
