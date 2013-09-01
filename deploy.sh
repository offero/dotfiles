
###########################################
# rxvt-unicode with perl extensions
###########################################
# if on ubuntu
# sudo apt-get install rxvt-unicode-256color
mkdir -p $HOME/.local/lib/urxvt/perl
for ext in clipboard keyboard-select url-select; do
    ln -s $(pwd)/urxvt/urxvt-perls.git/$ext $HOME/.local/lib/urxvt/perl/$ext
    ;
done;
###########################################
