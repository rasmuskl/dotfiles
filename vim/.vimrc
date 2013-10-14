 " --- Vundle setup
 set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required!
 Bundle 'gmarik/vundle'

 " My Bundles here:

Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
Bundle "pangloss/vim-javascript"
Bundle 'jelera/vim-javascript-syntax'
Bundle 'sickill/vim-monokai'
Bundle 'kchmck/vim-coffee-script'

filetype on
filetype plugin indent on     " required!

syntax enable
set background=dark
colorscheme Monokai

if $TERM != 'xterm-256color'
  echo 'Warning: Term is ' . $TERM
endif

 " Show status line always
set laststatus=2

 " Show line numbers
set number

 " Set tabs to 2
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab

let mapleader=","
noremap <leader>e :tabe
noremap <leader>v :tabe ~/.vimrc<cr>
noremap <C-tab> :tabnext<cr>
noremap <C-S-tab> :tabprevious<cr>

noremap <C-s> :w<cr>
inoremap <C-s> <esc>:w<cr>
vnoremap <C-s> <esc>:w<cr>

autocmd bufwritepost $MYVIMRC :so $MYVIMRC
" autocmd bufwritepost * :CommandTFlush

" Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>

" Use the same symbols as TextMate for tabstops and EOLs
" Shortcut to rapidly toggle `set list`
noremap <leader>l :set list!<CR>

function! Preserve(command)
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  execute a:command
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
noremap <leader>$ :call Preserve("%s/\\s\\+$//e")<CR>
noremap <leader>= :call Preserve("normal gg=G")<CR>

