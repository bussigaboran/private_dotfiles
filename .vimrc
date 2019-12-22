"""" Plugins """""""""""""""""""""""""""""""""""""""""
set nocompatible  " vim, not vi. (needed by pathogen and vimwiki)
call pathogen#infect()
call pathogen#helptags()

" VimWiki
#let g:vimwiki_list = [ {'path': '~/work/VimWiki/work', 'path_html':'~/work/VimWiki/export/html/'} ]
let g:vimwiki_list = [ {'path': '~/Dropbox/VimWiki/personal'},{'path': '~/Dropbox/VimWiki/web', 'path_html':'~/Dropbox/VimWiki/export/html/'} ]
nmap ,wb <Plug>VimwikiGoBackLink
nmap ,b <Plug>VimwikiGoBackLink

"""" Ale     """""""""""""""""""""""""""""""""""""""""
filetype off
let &runtimepath.='~/.vim/bundle/ale'
filetype plugin on
"""" Syntastic """"""""""""""""""""""""""""""""""""""""
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 1
"""" NERDTree """"""""""""""""""""""""""""""""""""""""
map <silent> <C-n> :NERDTreeToggle<CR>  " NERDTree on ctrl+n
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
"""" General """""""""""""""""""""""""""""""""""""""""
set visualbell   " flashes instead of beeps
let mapleader=","
set nobackup
set encoding=utf-8

"""" Visual """"""""""""""""""""""""""""""""""""""""""
set number
set ruler
colorscheme elflord
syntax on
set showmatch
set showmode
set wildmode=list:longest  " show all completion matches
set scrolloff=3            " margin buffer when scrolling

"""" Windows and tabs """"""""""""""""""""""""""""""""
map ,t :tabnew
map <Leader>p <ESC>:tabprevious<CR>
map <Leader>n <ESC>:tabnext<CR>

set splitbelow " split new windows below instead of top
set splitright " split new windows right instead of left
map vv <C-W>v  " shortcuts for vertical split
map ss <C-W>s  " shortcut for horizontal split
map Q  <C-W>q  " shortcut for close windows

"""" Searching """""""""""""""""""""""""""""""""""""""
set hlsearch    " highlight
set incsearch   " incremental
set ignorecase  " case insensiitive
noremap ,h :set hlsearch! hlsearch?<CR> " toggle search highlighting

"""" Python """"""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
" pep8-ish
set expandtab
set textwidth=79
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
"
"set foldmethod=indent
"set foldlevel=99
nnoremap <space> za " Enable folding with the space bar
"""" Text """"""""""""""""""""""""""""""""""""""""""""
"" underline the current line with dashes
"map! @u <Esc>yyp:s/./-/g<Enter>o

"""" Files """"""""""""""""""""""""""""""""""""""""""""
" editing and sourcing .vimrc
map ,e :e ~/.vimrc<cr>
map ,v :source ~/.vimrc<cr>

map <F2> :echo strftime('%F %H:%M:%S')<CR> " echo timestamp
cnoremap sudow w !sudo tee % " write read-only file with sudo
