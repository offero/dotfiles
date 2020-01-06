filetype off

filetype plugin indent on
syntax enable

set nu
set relativenumber
syntax sync minlines=256  " for speed improvement
set visualbell " no audible bell
set synmaxcol=160  " speed for long lines
set history=500
set showcmd
set hlsearch
set incsearch
set nowrap      " don't wrap text
set nowrapscan  " don't wrap search from bottom to top (and opposite)
set laststatus=2 " always show the status line
set encoding=utf8
set nosmartindent " smartindent causes line-initial # mark to unindent
set cindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround
set copyindent
set cinkeys-=0#
set indentkeys-=0#
set undodir=~/.cache/nvim/undo
set undofile
set undolevels=1500 " max number of changes that can be undone
set undoreload=10000 " max number of lines to save for undo on a buffer reload
set linebreak
set textwidth=100
set formatoptions-=t " unset automatic text wrapping at textwidth
set formatoptions+=n " recognized numbered lists
set scrolloff=3 " number of lines to cursor
set noshowmatch " brackets
set shortmess="atI"
set nocursorline
set nocursorcolumn
set noruler
set foldlevelstart=20
set foldnestmax=3
set backspace=indent,eol,start
set undolevels=1000
set list
set listchars=tab:\|\ ,trail:.,extends:#,nbsp:.
" Add the '-' to the list of characters that are considered part of a keyword.
" IE. Word actions will include hyphenated words.
set iskeyword+=-
set noautochdir
" Tab on the command line will show a menu to complete buffer and file names
set wildchar=<Tab> wildmenu wildmode=longest,list,full
set wildignore+=*.o,*.obj,.git,*.pyc,*.py~
set diffopt+=vertical
" enable mouse interaction when running in tmux or screen
set mouse+=a
set noshowmode " lightline does this for us

set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case

let g:tern#command = ['/home/offero/.nvm/versions/node/v8.15.0/bin/node', '/home/offero/.local/share/nvim/site/pack/offero/start/tern_for_vim/node_modules/tern/bin/tern', '--no-port-file']

nmap <leader>cd :cd %:p:h<CR>

nnoremap <SPACE> <Nop>
let mapleader = "\<Space>"
let g:mapleader = "\<Space>"
let maplocalleader = "\<Space>"
let g:maplocalleader = "\<Space>"

" vim-commentary remap
nmap <leader>cm gcc
vmap <leader>cm gc

" Horizonal scrolling
nnoremap <Right> 2zl
nnoremap <Left> 2zh
nnoremap <Down> 2<C-e>
nnoremap <Up> 2<C-y>

" Window resizing
noremap <leader><Up> 2<C-W>+
noremap <leader><Down> 2<C-W>-
noremap <leader><Left> 2<C-w><
noremap <leader><Right> 2<C-w>>

" Jedi
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = "2"
let g:jedi#auto_vim_configuration = 0
let g:jedi#popup_select_first = 0
" Disable the docstring window:
" The reason to deactivate jedi#auto_vim_configuration
au FileType python setlocal completeopt-=preview
"command! JediDoc call jedi#show_documentation()
"command! JediAsgn call jedi#goto_assignments()
"command! JediDef call jedi#goto_definitions()
"command! JediUsage call jedi#usages()

" CtrlSF
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

let g:ctrlsf_auto_close = {
    \ "normal" : 0,
    \ "compact": 0
    \}

" NerdTree
let g:NERDTreeMinimalUI=1
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.o$', '\.pyc$', '\~$', '.DS_Store$']
let g:NERDTreeAutoCenter=1

nnoremap <silent> <leader>nt :NERDTreeFocus<CR>
nnoremap <silent> <leader>nc :NERDTreeClose<CR>
nnoremap <silent> <leader>nf :NERDTreeFind<CR>
" Stop underlines from showing up on files in NerdTree
augroup au_nerdtree
    autocmd!
    autocmd FileType nerdtree hi Title gui=None
augroup END

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "!",
    \ "Staged"    : "s",
    \ "Untracked" : "?",
    \ "Renamed"   : "r",
    \ "Unmerged"  : "*",
    \ "Deleted"   : "d",
    \ "Dirty"     : "#",
    \ "Clean"     : "|",
    \ 'Ignored'   : 'i',
    \ "Unknown"   : "??"
    \ }


set clipboard=unnamedplus

let s:clip = 'iconv -f utf-8 -t utf-16le | /mnt/c/Windows/System32/clip.exe' 
if executable(s:clip)
    augroup WSLYank
        autocmd!
        " autocmd TextYankPost * call system('echo '.shellescape(join(v:event.regcontents, "\<CR>")).' | '.s:clip)
        autocmd TextYankPost * call system(s:clip, v:event.regcontents)
    augroup END
end

nnoremap <silent> <leader>p :r !powershell.exe -Command Get-Clipboard<CR>

let g:ale_lint_on_enter = 1

" let g:ale_linters = {
" \   'python': ['pylint'],
" \}

let b:ale_fixers = {'javascript': ['eslint']}

let g:ale_python_flake8_options = '--ignore=E501,W291'
let g:ale_python_pylint_options = ''

if (has("nvim"))
  "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif


let g:lightline = {
      \ 'colorscheme': 'jellybeans',
      \ }

set background=dark
let g:material_theme_style = 'ocean'
let g:material_terminal_italics = 1
colorscheme material
