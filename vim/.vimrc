"""""""""""""""""""""""""""""""""""""""""
" NeoBundle/Vundle Setup
"""""""""""""""""""""""""""""""""""""""""
set nocompatible     "be iMproved
filetype off         "required! (Vundle Only)
if has('win32') || has('win64')
  let $VIMHOME = "~/vimfiles"
  set rtp+=~/vimfiles/bundle/neobundle.vim/
  call neobundle#rc(expand('~/vimfiles/bundle/'))
  "set rtp+=~/vimfiles/bundle/vundle/
  "call vundle#rc('$HOME/vimfiles/bundle/')
else
  let $VIMHOME="~/.vim"
  set rtp+=~/.vim/bundle/neobundle.vim/
  call neobundle#rc(expand('~/.vim/bundle/'))
  "set rtp+=~/.vim/bundle/vundle/
  "call vundle#rc()
endif


" let Vundle manage Vundle : required! 
" Bundle 'gmarik/vundle'

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'
"""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""
" Color schemes
"""""""""""""""""""""""""""""""""""""""""
NeoBundle 'nanotech/jellybeans.vim.git'
NeoBundle 'Zenburn'
NeoBundle 'molokai'
NeoBundle 'pf_earth.vim'
NeoBundle 'altercation/vim-colors-solarized.git'
NeoBundle 'goatslacker/mango.vim.git'
NeoBundle 'nielsmadan/harlequin'
" Defines commands :CP and :CN that change (next, prev) colorschemes
" Also defines :SCROLLCOLORS to provide a list of colorscheme choices
NeoBundle 'ScrollColors'
" \p is set in ScrollColors, it interfere's with clojure plugin
"autocmd FileType clojure unmap \p
"gvim colorscheme adapter for vim in 256 terminal mode
"Bundle 'CSApprox'
"Bundle 'bukzor/csapprox.git'
"""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""
NeoBundle 'kien/rainbow_parentheses.vim'
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
"""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""
" Clojure
"""""""""""""""""""""""""""""""""""""""""
" nRepl for clojure built in
"Bundle 'tpope/vim-fireplace.git'
NeoBundle 'tpope/vim-classpath.git'
NeoBundle 'guns/vim-clojure-static'
"let vimclojure#UseErrorBuffer = 0
"""""""""""""""""""""""""""""""""""""""""

" Displays Match M out of N" when searching (smart with large files)
NeoBundle 'IndexedSearch'
NeoBundle 'sherlock.vim'

" Colors color expressions like their actual colors #FF0000
NeoBundle 'chrisbra/color_highlight.git'

" scratch buffer with commands :Scratch and Sscratch
NeoBundle 'scratch.vim'

"""""""""""""""""""""""""""""""""""""""""
" Misc language support
"""""""""""""""""""""""""""""""""""""""""
NeoBundle 'octave.vim'
NeoBundle 'rodjek/vim-puppet.git'
"""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""
" NerdTree
"""""""""""""""""""""""""""""""""""""""""
NeoBundle 'scrooloose/nerdtree.git'
let g:NERDTreeIgnore = ['\.pyc$', '\~$', '.DS_Store$']
"Same nerdtree across all tabs
"Bundle 'jistr/vim-nerdtree-tabs'
" NERDTree
"let g:NERDTreeWinPos = "right"
nnoremap <silent> <F2> :NERDTreeToggle<CR>
nnoremap <silent> <F3> :NERDTreeFocus<CR>
" Open NERDTree automatically when vim starts up if no files were specified
"autocmd vimenter * if !argc() | NERDTree | endif
"""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""
" Tabular aligns text
"""""""""""""""""""""""""""""""""""""""""
NeoBundle 'ihacklog/tabular.git'
"""""""""""""""""""""""""""""""""""""""""

"Open file helper
NeoBundle 'kien/ctrlp.vim.git'
NeoBundle 'tpope/vim-fugitive.git'
NeoBundle 'The-NERD-Commenter'
NeoBundle 'L9'
NeoBundle 'ervandew/supertab.git'

"""""""""""""""""""""""""""""""""""""""""
" TODO: Test/install these
"""""""""""""""""""""""""""""""""""""""""
"Bundle 'FuzzyFinder'
" https://github.com/benmills/vimux
"tab completion helper; use tab key for completion; context-based completion
" YouCompleteMe requires 7.3.584
"Bundle 'Valloric/YouCompleteMe'
"https://github.com/kien/ctrlp.vim
"http://kien.github.io/ctrlp.vim/
NeoBundle 'Rip-Rip/clang_complete'
"Bundle 'vim-scripts/YankRing.vim'
"Bundle rstacruz/sparkup.git  "Fast HTML coding
"Bundle Shougo/neocomplcache.vim.git " autocompletion
"Bundle Shougo/neocomplete.vim.git " the successor to neocomplcache
"Bundle Lokaltog/vim-easymotion.git
"Bundle kshenoy/vim-signature.git
"Bundle terryma/vim-multiple-cursors.git
"Bundle mattn/emmet-vim.git " HTML5 and CSS coding
"Bundle Rykka/colorv.vim.git
"DirDiff.vim
"Bundle othree/html5.vim.git
"Bundle Yggdroot/indentLine.git
"Bundle SirVer/ultisnips.git
"Bundle bling/vim-airline.git
"Bundle airblade/vim-gitgutter
"Bundle jimsei/winresizer.git
"""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""
" Python
"""""""""""""""""""""""""""""""""""""""""
"updated version of python omnicomplete
"Bundle 'pythoncomplete'
"Bundle 'iynaix/django.vim'
"Bundle 'Python-2.x-Standard-Library-Reference'
"Bundle 'Python-3.x-Standard-Library-Reference'
"Bundle 'pep8--Yusuke'
"let g:pep8_igore = "E221"
"Bundle 'git://github.com/jbking/vim-pep8.git'
"More up to date pydoc integration
"Bundle 'git://github.com/fs111/pydoc.vim.git'

NeoBundle 'davidhalter/jedi-vim.git'
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#use_tabs_not_buffers = 0
" if these are set to "" then these are unassigned
let g:jedi#auto_initialization = 1
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "1"

" highlighting indentation
NeoBundle 'nathanaelkane/vim-indent-guides.git'
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=darkgrey ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=lightgrey ctermbg=4

" Recognize .wsgi files as python
autocmd BufRead,BufNewFile *.wsgi set filetype=python
au BufNewFile,BufRead *.mako set ft=mako

" django
"autocmd FileType html set filetype=html syntax=htmldjango

"""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""
"Syntastic performs syntax checking
"""""""""""""""""""""""""""""""""""""""""
NeoBundle 'scrooloose/syntastic.git'
" Syntastic checkers
"let g:syntastic_python_checker = 'pyflakes' # deprication warning
"let g:syntastic_python_checker = 'pylint'
"let g:syntastic_disabled_filetypes = ['html', 'python', 'py']
let g:syntastic_disabled_filetypes = ['html']
" 'Signs' are markers in the left most column indicating problem on a line
"let g:syntastic_enable_signs = 0
let g:syntastic_enable_signs=1
" Error balloons on mouse-over
let g:syntastic_enable_balloons = 0
"let g:syntastic_enable_highlighting = 0
" Echoing current line's error
"let g:syntastic_echo_current_error = 0
let g:syntastic_auto_loc_list=0 "use the :Errors command to bring up the loc list
"""""""""""""""""""""""""""""""""""""""""


"""""""""""""""""""""""""""""""""""""""""
" Buffers and tags
"""""""""""""""""""""""""""""""""""""""""
" MiniBufExplorer
NeoBundle 'fholgado/minibufexpl.vim.git'
let g:miniBufExplMapWindowNavArrows = 1
" minibufexpl is really slow with ~ >10 buffers open unless this is set
let g:miniBufExplCheckDupeBufs = 0
let g:miniBufExplorerMoreThanOne = 2
"let g:miniBufExplForceSyntaxEnable = 1
" The text under the buffer windows in the separator line of minibufexpl
let g:statusLineText=""

" Go to/open MiniBufExplorer window
map <leader>e :MiniBufExplorer<CR>
map <leader>b :MiniBufExplorer<CR>
" Close MiniBufExplorer window
map <Leader>c :CMiniBufExplorer<cr>
" Update MiniBufExplorer window
map <Leader>u :UMiniBufExplorer<cr>

"Give the :BD command(s) to keep window layout when deleting buffers
NeoBundle 'bufkill.vim'
NeoBundle 'majutsushi/tagbar'
nnoremap <silent> <F8> :TagbarToggle<CR>
" ##########  The j argument here _v_ is required to focus the cursor
nnoremap <silent> <F7> :TagbarOpen j<CR>
"let g:tagbar_left=1
"let g:tagbar_width=30
"let g:tagbar_autofocus=1
"let g:tagbar_expand=1 " expand gvim window by tagbar width

" set ctags search
" This will look in the current directory for "tags", and work up the tree 
" towards root until one is found. IOW, you can be anywhere in your source tree 
" instead of just the root of it.
set tags=./tags;/
set tags+=~/.vim/tags/cpp " cpp std lib
set tags+=~/.vim/tags/libc6
"""""""""""""""""""""""""""""""""""""""""

" repeat.vim allows other plugins to use the dot repeat command
NeoBundle 'tpope/vim-repeat.git'
NeoBundle 'tpope/vim-surround.git'

" Repeat numbered motion commands with ; and , keys
NeoBundle  'repmo.vim'
" use \ instead of , (leader re-mapped to ,)
"let repmo_revkey = 'r'

"""""""""""""""""""""""""""""""""""""""""
" Post NeoBundle/Vundle
"""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on     " required!
"""""""""""""""""""""""""""""""""""""""""

NeoBundleCheck

"""""""""""""""""""""""""""""""""""""""""
" Standard VIM options
"""""""""""""""""""""""""""""""""""""""""
set t_Co=256
set nu               "line numbers
syntax enable
set history=500 "lines of history
set hlsearch
set incsearch
"hi Search ctermbg=darkgreen ctermfg=white guibg=darkgreen guifg=white
"hi Visual ctermbg=darkgrey guibg=darkgrey
"hi MatchParen cterm=bold gui=bold guifg=black guibg=darkgrey
set laststatus=2 "always show the status line
set encoding=utf8
set nosmartindent " smartindent causes line-initial # mark to unintent
set cindent
" set tab stop to 4 spaces so tab spacing isnt so huge
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
"set autoindent
set shiftround " round indents to multiples of shiftwidth
set copyindent " copy structure of existing line indent
"set preserveindent
" no special treatment for '#' character when indenting
set cinkeys-=0#
set indentkeys-=0#
set undodir=~/.vim/undo
set undofile
set undolevels=1500 " max number of changes that can be undone
set undoreload=10000 " max number of lines to save for undo on a buffer reload
set linebreak
set textwidth=80
"set columns=88
set formatoptions-=t " unset automatic text wrapping at textwidth
set formatoptions+=n " recognized numbered lists
" number of lines to cursor
set scrolloff=3
" show matching brackets
set showmatch
set shortmess="filxtTI"
set cursorline " highlight current line
set ruler " always show cursor
"set colorcolumn=+1 " colorcolumn textwidth+1
set colorcolumn=81 " colorcolumn textwidth+1
"set foldmethod=syntax
set foldlevelstart=20
set foldnestmax=3  " max nested level to fold
set backspace=indent,eol,start
"set ignorecase
"set smartcase     " ignore case if search pattern is all lowercase,
                  "    case-sensitive otherwise
set undolevels=1000  " use many muchos levels of undo
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
" Add the '-' to the list of characters that are considered part of a keyword.
" IE. Word actions will include hyphenated words.
set iskeyword+=-
"if has('win32') || has('win64')
    "set shellslash
"endif
"""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""
" Status Line
"""""""""""""""""""""""""""""""""""""""""
if has('statusline')
    set laststatus=2
    " Broken down into easily includeable segments
    "set statusline=%<%f\ " Filename
    set statusline=%<%t\ " Tail of filename
    set statusline+=%w%h%m%r " Options
    set statusline+=%{fugitive#statusline()} " Git Hotness
    "set statusline+=\ [%{&ff}/%Y] " filetype
    "set statusline+=\ [%{getcwd()}] " current dir
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    set statusline+=%=%-14.(%l,%c%V%)\ %p%% " Right aligned file nav info
endif
"""""""""""""""""""""""""""""""""""""""""

"Delete trailing white space
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

" Tab on the command line will show a menu to complete buffer and file names
set wildchar=<Tab> wildmenu wildmode=longest,list,full
set wildignore+=*.o,*.obj,.git,*.pyc,*.py~
" Map ctrl+space combination to set off the auto-complete menu
imap <C-Space> <C-x><C-o>
imap <C-@> <C-Space>

" Omnicomplete
set omnifunc=syntaxcomplete#Complete
" Expand to the longest match to save characters
" Set tab completion to key off of ctrl-space and expand tab characters
set completeopt=longest
let g:SuperTabLongestEnhanced = 1
let g:SuperTabNoCompleteAfter = ['^', '\s']
", ',', '(', ')', '{', '}', '"']
"let g:SuperTabNoCompleteBefore = [' $']
let g:SuperTabDefaultCompletionType = "context"
"let g:SuperTabContextDefaultCompletionType = "<c-n>" " fallback from "context"
let g:SuperTabMappingForward = '<c-space>' " default is <tab>
let g:SuperTabMappingBackward = '<s-c-space>' " default is <s-tab>
let g:SuperTabMappingTabLiteral = '<Tab>' " default is <c-tab>
let g:SuperTabRetainCompletionDuration = "session"
" jedi#completions
"autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType c set omnifunc=ccomplete#Complete

" automatically open and close the popup menu / preview window
au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif
set completeopt=menuone,menu,longest,preview
set pumheight=15 " pop-up menu height

" Enter key will simply select the highlighted menu item, just as <C-Y> does
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" This only works for windows:
"nmap <F12> :let &guifont = substitute(&guifont, ':h\(\d\+\)', '\=":h" . (submatch(1) - 1)', '')<CR>
"nmap <S-F12> :let &guifont = substitute(&guifont, ':h\(\d\+\)', '\=":h" . (submatch(1) + 1)', '')<CR>

"let g:Powerline_symbols="unicode"
"let g:Powerline_symbols="compatible"
"let g:Powerline_stl_path_style="short" " or 'relative' or 'full'

"  %{ModWarning()}
function! ModWarning()
    if !&modifiable
        return '[VIEW ONLY]'
    endif
    return ''
endfunction

" set paste/nopaste toggling
"set pastetoggle=<F2>

hi SpecialKey ctermfg=8 guifg=lightgray
 " The "NonText" highlighting is used for "eol", "extends" and "precedes"
 " "SpecialKey" for "nbsp", "tab" and "trail"."

" omni-completion menu was pink, so this is better...
highlight Pmenu ctermbg=238 guibg=DimGrey
highlight PmenuSel ctermbg=7 guibg=DarkBlue guifg=White
highlight PmenuSbar ctermbg=7 guibg=DarkGray
highlight PmenuThumb guibg=Black

"""""""""""""""""""""""""""""""""""""""""
" Color scheme and font configuration
"""""""""""""""""""""""""""""""""""""""""
" GVIM specific options
if has('gui_running')
  set guioptions-=T  " no toolbar
  set guioptions-=m  " no menubar
  set guitablabel=%t " only filename in tab label
  if has('win32') || has('win64')
    set guifont=Consolas:h10
    set guifontwide=MingLiU:h10
  else
    set guifont=Monaco\ 9
    "set guifont=Ubuntu\ Mono\ 11
    "set guifont=Droid\ Sans\ Mono\ 10
    "set guifont=Anonymous\ Pro\ Minus\ 11
    "set guifont=Envy\ Code\ R\ 10
  endif
  " enable color_highlight plugin automatically
  " other I like: zenburn, slate2, 3dglasses, solarized, molokai
  "let g:auto_color=1
  set background=dark
  colors harlequin
else
  " Whether solarized is the terminal theme too...
  let g:solarized_termtrans = 1
  " Colors in terminal require 256 scheme
  let g:solarized_termcolors=256
  set background=dark
  colors solarized
  " override Normal foreground and comment colors to something a bit brighter
  hi Normal ctermfg=lightgray guifg=lightgray
  hi Comment ctermfg=darkgrey guifg=darkgrey
endif

" for spelling and syntax checking - underline  undercurl
"highlight SpellBad ctermbg=red guibg=#6d140e guisp=#6d140e
"highlight ColorColumn ctermbg=darkgrey guibg=gray
" Remove underline, use grey background on current column
"highlight CursorLine cterm=NONE ctermbg=235
" More contrast with zenburn colorscheme
"let g:zenburn_high_Contrast=1
"let g:molokai_original=1
"let g:solarized_visibility = "high"
"""""""""""""""""""""""""""""""""""""""""

" From: http://vim.wikia.com/wiki/VimTip572
" Highlight all instances of word under cursor, when idle.
" Type z/ to toggle highlighting on/off.
nnoremap z/ :if AutoHighlightToggle()<Bar>set hls<Bar>endif<CR>
function! AutoHighlightToggle()
  let @/ = ''
  if exists('#auto_highlight')
    au! auto_highlight
    augroup! auto_highlight
    setl updatetime=4000
    echo 'Highlight current word: off'
    return 0
  else
    augroup auto_highlight
      au!
      au CursorHold * let @/ = '\V\<'.escape(expand('<cword>'), '\').'\>'
    augroup end
    setl updatetime=500
    echo 'Highlight current word: ON'
    return 1
  endif
endfunction

map <F5> :call AutoHighlightToggle()<CR>

" A Vim function I use to easily toggle colorcolumn on and off.
" If colorcolumn is off and textwidth is set the use colorcolumn=+1.
" If colorcolumn is off and textwidth is not set then use colorcolumn=80.
" If colorcolumn is on then turn it off.
function! ColorColumn()
  if empty(&colorcolumn)
    if empty(&textwidth)
      echo "colorcolumn=80"
      setlocal colorcolumn=80
    else
      echo "colorcolumn=+1 (" . (&textwidth + 1) . ")"
      setlocal colorcolumn=+1
    endif
  else
    echo "colorcolumn="
    setlocal colorcolumn=
  endif
endfunction

nnoremap <F6> :call ColorColumn()<cr>

" map ctrl-w + [hjkl] to ctrl-[hjkl] to move around windows
" minibufexpl maps these too
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Fast window resizing with +/- keys (horizontal); / and * keys (vertical)
if bufwinnr(1)
  map <kPlus> <C-W>+
  map <kMinus> <C-W>-
  map <kDivide> <c-w><
  map <kMultiply> <c-w>>
endif

" Maps Alt-[h,j,k,l] to resizing a window split
map <silent> <A-h> <C-w><
map <silent> <A-j> <C-W>-
map <silent> <A-k> <C-W>+
map <silent> <A-l> <C-w>>
noremap <Right> <C-w>>
noremap <Left> <C-w><

" Horizontal scrolling
noremap <C-]> zl
noremap <C-[> zh

" Maps Alt-[s.v] to horizontal and vertical split respectively
map <silent> <A-s> :split<CR>
map <silent> <A-v> :vsplit<CR>

" keypad 0 move to first non-whitespace character on line
map <k0> ^

" Tab configuration
map <leader>tn :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" make j and k act by terminal line when dealing with wrapped text
nnoremap j gj
nnoremap k gk

" Horizonal scrolling with Ctrl-N, Ctrl-M
nmap <C-m> 2zl
nmap <C-n> 2zh

" use ii as an escape
"imap ii <C-[>
" map ctrl-j to exit insert mode

imap ,, <Esc>
inoremap JJ <Esc>
"vnoremap <C-j> <Esc>
" map shift-space to exit insert mode
"inoremap <S-space> <Esc> " I hit this combo after typing symbols (don't use)
"vnoremap <S-space> <Esc>
"nnoremap <S-Space> i
"nnoremap <leader>i i
"inoremap <leader>i <Esc>

" enable reverse find (f, t) movement key
nnoremap <Space>, ,
let mapleader = ","
let g:mapleader = ","

map <F4> :let @/ = ""<CR>

" Escape special characters in a string for exact matching.
" This is useful to copying strings from the file to the search tool
" Based on this - http://peterodding.com/code/vim/profile/autoload/xolox/escape.vim
function! EscapeString (string)
  let string=a:string
  " Escape regex characters
  let string = escape(string, '^$.*\/~[]')
  " Escape the line endings
  let string = substitute(string, '\n', '\\n', 'g')
  return string
endfunction

" Get the current visual block for search and replaces
" This function passed the visual block through a string escape function
" Based on this - http://stackoverflow.com/questions/676600/vim-replace-selected-text/677918#677918
function! GetVisual() range
  " Save the current register and clipboard
  let reg_save = getreg('"')
  let regtype_save = getregtype('"')
  let cb_save = &clipboard
  set clipboard&

  " Put the current visual selection in the " register
  normal! ""gvy
  let selection = getreg('"')

  " Put the saved registers and clipboards back
  call setreg('"', reg_save, regtype_save)
  let &clipboard = cb_save

  "Escape any special characters in the selection
  let escaped_selection = EscapeString(selection)

  return escaped_selection
endfunction

" save file
nmap <leader>w :w<CR>

" Start the find and replace command across the entire file
vmap <leader>z <Esc>:%s/<c-r>=GetVisual()<cr>/

" highlight word under cursor
nmap <leader>s "ryiw:let @/ = @r<CR>
" highlight selected visual mode text
vmap <leader>s "ry:let @/ = @r<CR>

" Set global working directory to current working directory
nnoremap <leader>cd :cd %:p:h<CR>

" map leader+comma to begin the buffer switch command line
noremap <leader>, :b 

" Right and left arrows switch between next/prev buffers
"noremap <Right> :bnext<CR><CR>
"noremap <Left> :bprev<CR><CR>

" insert new line with control and enter
inoremap <C-CR> <Esc>o
nnoremap <C-CR> o

nnoremap <leader>q :q<cr>

"inoremap () ()<Left>
"inoremap <> <><Left>
"inoremap {} {}<Left>
"inoremap [] []<Left>
"inoremap () ()<Left>
inoremap #" """<cr>"""<Up>
inoremap #' '''<cr>'''<Up>


" Use Q for formatting the current paragraph (or selection)
vmap <leader>f gq
nmap <leader>f gqap

" quick switch buffers with leader key
nnoremap <leader>1 :1b<CR>
nnoremap <leader>2 :2b<CR>
nnoremap <leader>3 :3b<CR>
nnoremap <leader>4 :4b<CR>
nnoremap <leader>5 :5b<CR>
nnoremap <leader>6 :6b<CR>
nnoremap <leader>7 :7b<CR>
nnoremap <leader>8 :8b<CR>
nnoremap <leader>9 :9b<CR>
nnoremap <leader>0 :10b<CR>

" To/from clipboard
nmap <leader>p "+p
nmap <leader>y "+y

" fix for powerline issue with certain color schemes clearing the highlighting
" https://github.com/Lokaltog/vim-powerline/issues/82
"augroup vimrcs
  "au!
  "au bufwritepost ~/.vimrc 
    "\ source ~/.vimrc |
    "\ if exists('g:Powerline_loaded') |
      "\ silent! call Pl#Load() |
    "\ endif 
"augroup END

" This has to be at the bottom to override other colors (cterm)
"hi Search ctermbg=darkgreen ctermfg=white guibg=darkgreen guifg=white
"hi Visual ctermbg=darkgrey guibg=darkgrey
"hi Visual ctermbg=lightgrey guibg=lightgrey
"hi MatchParen gui=none guifg=green guibg=grey cterm=none ctermfg=green ctermbg=grey
