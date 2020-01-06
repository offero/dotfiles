# WSL Setup

## tmux

tmux.conf

git clone plugins from conf file into ~/.tmux/plugins

## ~/.tmux/plugins

```
~/.tmux/plugins
+ λ for d in *; do cd $d; git remote -v; cd ..; done;
offero  git@github.com:offero/tmux-yank.git (fetch)
origin  https://git::@github.com/tmux-plugins/tmux-yank (fetch)
origin  https://github.com/tmux-plugins/tpm (fetch)
origin  https://git::@github.com/tmux-plugins/vim-tmux-focus-events (fetch)
origin  https://git::@github.com/christoomey/vim-tmux-navigator (fetch)
```

```

commit 77deec3732249dcfbc3ed5736a781f34664da276 (HEAD -> win-iconv-utf16, offero/win-iconv-utf16)
Author: Christopher <offero@gmail.com>
Date:   Mon Sep 30 09:33:27 2019 -0400

    use iconv to copy to utf16 clipboard

diff --git a/scripts/helpers.sh b/scripts/helpers.sh
index c80a93f..64598bc 100644
--- a/scripts/helpers.sh
+++ b/scripts/helpers.sh
@@ -147,7 +147,7 @@
             echo "pbcopy"
         fi
     elif command_exists "clip.exe"; then # WSL clipboard command
-        echo "cat | clip.exe"
+        echo "cat | iconv -f utf-8 -t utf-16le | clip.exe"
     elif command_exists "wl-copy"; then # wl-clipboard: Wayland clipboard utilities
         echo "wl-copy"
     elif command_exists "xsel"; then
```

## pyenv, rvm, direnv

Install, but use the sandboxd zsh plugin

## zsh

zshrc -> .zshrc

## .config/zsh/plugins

Clone https://github.com/benvan/sandboxd.git

## fzf

Install for zsh

.fzf.zsh is sourced from zshrc

```
~/.fzf  master
+ λ git remote -v
origin  https://github.com/junegunn/fzf.git (fetch)
```

## .config/nvim

init.vim

## ~/.local/share/nvim/site/pack/offero/start

```
~/.local/share/nvim/site/pack/offero/start
+ λ ls
ack.vim        deoplete.nvim     nerdtree              vim-commentary  vim-surround
ale            dracula-vim       neuromancer.vim       vim-javascript  vim-tmux-navigator
ctrlsf.vim     editorconfig-vim  sleuth                vim-jsx         Vundle.vim
cyberpunk.vim  lightline.vim     tern_for_vim          vim-repeat
deoplete-jedi  material.vim      vim-colors-solarized  vim-rooter
```

```
<1> ~/.local/share/nvim/site/pack/offero/start
+ λ for d in *; do cd $d; git remote -v; cd ..; done;
origin  https://github.com/mileszs/ack.vim.git (fetch)
origin  https://github.com/w0rp/ale.git (fetch)
origin  https://github.com/dyng/ctrlsf.vim.git (fetch)
origin  https://github.com/Arc0re/cyberpunk.vim.git (fetch)
origin  https://github.com/zchee/deoplete-jedi (fetch)
origin  https://github.com/Shougo/deoplete.nvim.git (fetch)
origin  https://github.com/dracula/vim.git (fetch)
origin  https://github.com/editorconfig/editorconfig-vim.git (fetch)
origin  https://github.com/itchyny/lightline.vim.git (fetch)
origin  https://github.com/kaicataldo/material.vim.git (fetch)
origin  https://github.com/scrooloose/nerdtree.git (fetch)
origin  https://github.com/Zabanaa/neuromancer.vim.git (fetch)
origin  https://tpope.io/vim/sleuth.git (fetch)
origin  https://github.com/ternjs/tern_for_vim.git (fetch)
origin  https://github.com/altercation/vim-colors-solarized.git (fetch)
origin  https://github.com/tpope/vim-commentary.git (fetch)
origin  https://github.com/pangloss/vim-javascript.git (fetch)
origin  https://github.com/mxw/vim-jsx (fetch)
origin  https://github.com/tpope/vim-repeat.git (fetch)
origin  https://github.com/airblade/vim-rooter.git (fetch)
origin  https://github.com/tpope/vim-surround.git (fetch)
origin  https://github.com/christoomey/vim-tmux-navigator.git (fetch)
origin  https://github.com/VundleVim/Vundle.vim.git (fetch)
```


