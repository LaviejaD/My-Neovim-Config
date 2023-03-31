" Install Vim Plug if not install 
" https://github.com/junegunn/vim-plug
"let g:plug_url_format = 'git@github.com:%s.git'

call plug#begin()

"color Schemas
Plug 'techtuner/aura-neovim'
Plug 'dracula/vim', { 'as': 'dracula' }
"Plug 'wafelack/rust-snippets'
" status bar 
Plug 'itchyny/lightline.vim'
"Documentation with jsDoc
Plug 'heavenshell/vim-jsdoc', { 
  \ 'for': ['javascript', 'javascript.jsx','typescript'], 
  \ 'do': 'make install'
\}

"custom extencion manager
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"git manager
Plug 'tpope/vim-fugitive'
"syntax highlight
Plug 'cespare/vim-toml', { 'branch': 'main' }
"preview 
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }


call plug#end()

"relative path 
function! Relative(path)
let root =  expand('%:p:h')
let sub  = "/"

if has("win32")
let sub = '\'
endif 

let fullpath = root . sub . a:path
let result = substitute(fullpath,'/',sub,'g')
return result
endfunction

"custom plugin config
runtime plug-config/coc.vim 
runtime plug-config/lightline.vim 
runtime plug-config/gdscript.vim
runtime plug-config/MarkdownPreview.vim
"key map
runtime keymaps.vim 

set listchars=tab:▷▷⋮
set tabstop=4
set expandtab 
set winwidth=100

"set winminheight=5
set winheight=999

"set backupdir=~/.cache/vim
set nobackup
set encoding=utf-8
set mouse=n
set number
set pyxversion=3

"clipboard
set clipboard=unnamed
"search 
set hlsearch!

"colorscheme dracula
colorscheme aura
set termguicolors


syntax enable

autocmd CursorHold * silent call CocActionAsync('highlight')

let g:jsdoc_lehre_path = Relative('node_modules/.bin/lehre') 

let g:coc_global_extensions = ['coc-toml',
                        \'coc-json',
                        \'coc-tsserver',
                        \'coc-eslint',
                        \'coc-explorer',
                        \'coc-html-css-support',
                        \'coc-pairs',
                        \'coc-prettier',
                        \'coc-snippets',
                        \'coc-git',
                        \'coc-html',
                        \'coc-emmet',
                        \'coc-highlight',
                        \'coc-rust-analyzer',
                        \]


