runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

filetype on
filetype plugin indent on     " required!

syntax enable
set background=dark
colorscheme Monokai

if has("gui_macvim")
  set guifont=Menlo
elseif has("gui_running")
  set guifont=Consolas:h14
endif

" if $TERM != 'xterm-256color'
"  echo 'Warning: Term is ' . $TERM
" endif

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

