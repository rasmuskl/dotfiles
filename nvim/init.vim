set nocompatible      " We're running Vim, not Vi!
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

colorscheme monokai
set termguicolors
if $TERM == "xterm-256color"
  set t_Co=256
endif

let g:SuperTabDefaultCompletionType = "context"

" Use ripgrep for ctrlp - source: http://www.philipbradley.net/ripgrep-with-ctrlp-and-vim/
if executable('rg')
  let g:ctrlp_user_command = 'rg --files %s'
  let g:ctrlp_use_caching = 0
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_switch_buffer = 'et'
endif

" Allow more than 10 results in ctrlp - source: https://github.com/kien/ctrlp.vim/issues/187#issuecomment-318886072
let g:ctrlp_match_window = 'min:4,max:10,results:100'
