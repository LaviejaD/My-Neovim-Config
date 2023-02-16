" Install Vim Plug if not install 
" https://github.com/junegunn/vim-plug
call plug#begin()

Plug 'wafelack/rust-snippets'

Plug 'itchyny/lightline.vim'

Plug 'heavenshell/vim-jsdoc', { 
  \ 'for': ['javascript', 'javascript.jsx','typescript'], 
  \ 'do': 'make install'
\}

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'tpope/vim-fugitive'

Plug 'cespare/vim-toml', { 'branch': 'main' }

call plug#end()
"custom plugin config
runtime plug-config/coc.vim 
runtime plug-config/lightline.vim 

set listchars=tab:▷▷⋮
set tabstop=4
set expandtab 
set winwidth=84
set winheight=5
set winminheight=5
set winheight=999
"set backupdir=~/.cache/vim
set nobackup
set encoding=utf-8
set mouse=n
set number
set pyxversion=3

colorscheme dracula
syntax enable

autocmd CursorHold * silent call CocActionAsync('highlight')

let g:jsdoc_lehre_path = 'C:\Users\OnlyD\AppData\Local\nvim\plugged\vim-jsdoc\node_modules\.bin\lehre'

let g:coc_global_extensions = ['coc-toml','coc-json','coc-tsserver','coc-eslint','coc-explorer','coc-html-css-support','coc-pairs','coc-prettier','coc-snippets','coc-git','coc-html','coc-emmet','coc-discord-neovim','coc-highlight','coc-rust-analyzer']

"Next Buffer
map <C-n>  :bnext
"Last Buffer
map <C-p>  :bprevious
