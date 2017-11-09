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
