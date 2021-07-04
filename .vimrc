"""" Plugins """""""""""""""""""""""""""""""""""""""""
set nocompatible  " needed by pathogen and vimwiki

"""" NERDTree """"""""""""""""""""""""""""""""""""""""
" NERDTree on ctrl+n
map <silent> <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
"""" Vimwiki """""""""""""""""""""""""""""""""""""""""
"let g:vimwiki_list = [ {'path': '~/Dropbox/VimWiki/personal'},{'path': '~/Dropbox/VimWiki/web', 'path_html':'~/Dropbox/VimWiki/export/html/'} ]
let g:vimwiki_list = [{
  \ 'path': '~/Dropbox/VimWiki/personal' },
  \ {
  \ 'path': '~/Dropbox/VimWiki/web',
  \ 'template_path': '~/Dropbox/VimWiki/templates/',
  \ 'template_default': 'default',
  \ 'template_ext': '.html',
  \ 'path_html': '~/Dropbox/VimWiki/export/html/' }]
nmap ,wb <Plug>VimwikiGoBackLink
nmap ,b <Plug>VimwikiGoBackLink
"""" Ale     """""""""""""""""""""""""""""""""""""""""
"filetype off
"let &runtimepath.='~/.vim/pack/plugins/start/ale'
"let g:ale_python_pyflakes_executable = 'pyflakes3'
"filetype plugin on
"""" Silver Searcher """""""""""""""""""""""""""""""""
" The Silver Searcher
if executable('ag')
   " Use ag over grep
   set grepprg=ag\ --nogroup\ --nocolor
   " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
   " ag is fast enough that CtrlP doesn't need to cache
   let g:ctrlp_use_caching = 0
   " bind K to grep word under cursor
   nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
endif
"""" General """""""""""""""""""""""""""""""""""""""""
set visualbell
set encoding=utf-8
let mapleader=","
set nobackup
" map jj to Esc. Handy on my iPad keyboard
inoremap jj <Esc>
"""" Visual """"""""""""""""""""""""""""""""""""""""""
" display line numbering, column and row
set number relativenumber
set ruler
" - set nice colors for green on black terminal
colorscheme elflord
syntax on
set showmatch
set showmode
" Keep a 3-line margin above/below cursor when scrolling
set scrolloff=3
set wildmode=list:longest  " show all completion matches
"""" Windows and tabs """"""""""""""""""""""""""""""""
map ,t :tabnew
map ,p <ESC>:tabprevious<CR>
map ,n <ESC>:tabnext<CR>
set splitbelow
set splitright
"""" Searching """""""""""""""""""""""""""""""""""""""
set hlsearch
set ignorecase
set incsearch
noremap ,h :set hlsearch! hlsearch?<CR> " toggle search highlighting
"""" Python """"""""""""""""""""""""""""""""""""""""""
filetype plugin indent on
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set textwidth=79
"""" Files """"""""""""""""""""""""""""""""""""""""""""
" editing and sourcing .vimrc
map ,e :e ~/.vimrc<cr>
map ,v :source ~/.vimrc<cr>
nmap ,x :split ~/.vim/wishlist.txt<CR>     " wishlist
map <F2> :echo strftime('%F %H:%M:%S')<CR> " echo timestamp
cnoremap sudow w !sudo tee % " write read-only file with sudo
""" Extra """""""""""""""""""""""""""""""""""""""""""""
inoremap ( ()<Esc>i
