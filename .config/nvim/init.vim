syntax on
set background=dark
set termguicolors
set nocompatible
set encoding=UTF-8
set colorcolumn=80
set updatetime=100
set relativenumber
set viminfo='1000
set tabstop=2
set shiftwidth=2
set expandtab
set completeopt=noinsert,menuone,noselect
set wildmenu
set ignorecase
set autoindent

let g:fzf_preview_command = 'bat --color=always --plain {-1}'
let g:fzf_preview_git_files_command = 'fd .'
let g:fzf_preview_filelist_command = 'rg --files --hidden --follow --no-messages -g \!"* *"'

highlight ColorColumn ctermbg=238

call plug#begin()
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'		" NERD Tree
Plug 'ryanoasis/vim-devicons'
Plug 'safv12/andromeda.vim'
Plug 'Xuyuanp/nerdtree-git-plugin' 	" show git status in Nerd tree
Plug 'itchyny/lightline.vim'		" UI
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Code {{{
Plug 'iamcco/diagnostic-languageserver', { 'do': 'yarn install' }
Plug 'editorconfig/editorconfig-vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'othree/html5.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }} " Markdown preview
"}}}

" GIT {{{
Plug 'tpope/vim-fugitive'
" }}}
call plug#end()

let mapleader=" "
" by myself

"go to 
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> gd <Plug>(coc-definition)

"search
map <leader>g :CocCommand fzf-preview.ProjectGrep
nnoremap <silent> <Leader>f :CocCommand fzf-preview.ProjectFiles<cr>
nnoremap <silent> <Leader>d :CocCommand fzf-preview.CocDefinition<cr>
nnoremap <silent> <Leader><F5> :CocCommand fzf-preview.CocDiagnostics<cr>
nnoremap <silent> <Leader><F7> :CocCommand fzf-preview.CocTypeDefinition<cr>
nnoremap <silent> <Leader><F6> :CocCommand fzf-preview.CocImplementations<cr>

"snippets 
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ CheckBackspace() ? "\<TAB>" :
      \ coc#refresh()
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'
" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" highlight
" autocmd CursorHold * silent call CocActionAsync('highlight')

"tabs & navigation  
map <leader>t gt<cr>
map <leader>n :tabnew<cr>
map <leader>m :tabmove
map <leader>c :close<CR>
map <leader><S-c> :tabclose<cr>
map <leader>o :tabonly<cr>
map <leader>e :NERDTreeToggle<cr>

"common
noremap <Leader>l :nohl<CR>
noremap <Leader>s :vsp<CR>
map <leader>w :w<cr>
map <leader>y "+y<cr>
map <leader>p "+p<cr>
map <leader>r <C-w>w  

"autoindent - eslint - prettier 
"silent! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
"augroup Mygroup
"  autocmd!
"  autocmd FileType typescript,json,.tsx silent! setl formatexpr=CocAction('formatSelected')
"  autocmd User CocJumpPlaceholder silent! call CocActionAsync('showSignatureHelp')
"augroup end

