if !exists(':Tabularize')
  finish " Tabular.vim wasn't loaded
endif

let s:save_cpo = &cpo
set cpo&vim

AddTabularPattern! first_eq /\%(=.*\)\@<!=[>=]\@!/l1c1l0
AddTabularPattern! first_colon /^[^:]*\zs:/l1c1l0
AddTabularPattern! first_rocket /\%(=>.*\)\@<!=>/l1c1l0
AddTabularPattern! first_key /\v%(%(\h\w*|"[^"]+"):.*)@<!%(\h\w*|"[^"]+")\zs:/l0l1
nmap <silent> <Leader>a= mT:Tabularize first_eq<cr>`T
nmap <silent> <Leader>a> mT:Tabularize first_rocket<CR>`T
nmap <silent> <Leader>a: mT:Tabularize first_colon<CR>`T
vmap <silent> <Leader>a= :Tabularize first_eq<CR>gv
vmap <silent> <Leader>a> :Tabularize first_rocket<CR>gv
vmap <silent> <Leader>a: :Tabularize first_colon<CR>gv

let &cpo = s:save_cpo
unlet s:save_cpo
