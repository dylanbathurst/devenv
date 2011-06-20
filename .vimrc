set number
" my additions
" source ~/.vim/ftplugin/xml.vim
" source ~/.vim/doc/NERD_tree.vim
" source ~/.vim/syntax/ftl.vim
" source ~/.vim/colors/molokai.vim
autocmd FileType php,js,html,java :set cindent
set incsearch
set hlsearch
set wrap

set t_co=256
set number
set guioptions=egmrt

" set our tabs to four spaces
set softtabstop=2
set shiftwidth=2
set ts=2
set expandtab

" File types
filetype on

" Set fhtml to xhtml highlighting
au BufRead,BufNewFile *.htmlf setfiletype xhtml
au BufRead,BufNewFile *.htmlf colorscheme pablo
au BufRead,BufNewFile *.ftl setfiletype xhtml

" Set for drupal related files types
augroup module
autocmd BufRead *.module set filetype=php
augroup END
augroup inc
autocmd BufRead *.inc set filetype=php
augroup END
augroup test
autocmd BufRead *.test set filetype=php
augroup END
augroup install
autocmd BufRead *.install set filetype=php
augroup END
augroup info
autocmd BufRead *.info set filetype=php
augroup END

" turn syntax highlighting on by default
syntax on
colorscheme desert

" set auto-indenting on for programming
set ai

" turn off compatibility with the old vi
set nocompatible

" turn on the "visual bell" - which is much quieter than the "audio blink"
set vb

" automatically show matching brackets. works like it does in bbedit.
set showmatch

" do NOT put a carriage return at the end of the last line! if you are programming
" for the web the default will cause http headers to be sent. that's bad.

" search related preferences
set incsearch
set hlsearch

" allows full line wrap
set wrap

" drupal_set_message print_r shortcut
inoremap #$ <c-r>=DrupalData()<CR>
function DrupalData()
return "drupal_set_message('<pre>' . print_r(,true) . '</pre>');"
endf

map <C-t><up> :tabr<cr>
map <C-t><down> :tabl<cr>
map <C-t><left> :tabp<cr>
map <C-t><right> :tabn<cr>

