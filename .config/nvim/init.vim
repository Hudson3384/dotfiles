set nocompatible
syntax enable
set colorcolumn=80
set updatetime=500
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set ignorecase
set autoindent

let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'

call plug#begin()
Plug 'tjdevries/colorbuddy.nvim', { 'branch': 'dev' }
Plug 'nobbmaestro/nvim-andromeda'
Plug 'dense-analysis/ale'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'tellijo/vim-react-native-snippets'
Plug 'mattn/emmet-vim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'kien/rainbow_parentheses.vim'
Plug 'tpope/vim-fugitive'
call plug#end()

let mapleader=" "
colorscheme andromeda
"
" by myself
noremap <Leader>s :vsp<CR>
nmap <leader>q  :sil npx standard --fix %<CR>
nmap <leader>a   :vsp term://~/workspace/repos/app-web/codeclimate-offline.sh<CR>
nmap <leader>A   :vsp "term://~/workspace/repos/app-web/codeclimate-offline.sh -v"<CR>

noremap <Leader>l :nohl<CR>
nnoremap <silent> <Leader>f :FZF -m <cr>
map <leader>n :tabnew<cr>
map <leader>t gt<cr>
map <leader>m :tabmove
map <leader>c :close<CR>
map <leader><S-c> :tabclose<cr>
map <leader>o :tabonly<cr>

map <leader>w :w<cr>
map <leader>y "+y<cr>
map <leader>p "+p<cr>
map <leader>r <C-w>w  

let g:vim_jsx_pretty_colorful_config = 1 
let g:jsx_ext_required = 1
let g:ale_linters = {'javascript': ['standard']}
let g:ale_fixers = {'javascript': ['standard']}
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 1
