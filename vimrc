""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My vimrc is based on the the vimrc of Amix:
" 	http://amix.dk/vim/vimrc.html
" I really appreciate his configurattion, but I also add my own features
" such as vundle,ctrlp,ultisnips,etc.
"
" Author: xautjzd
" Homepage: http://xautjzd.github.com
" Email: xautjzd@gmail.com
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible               "disable vi compatibility
filetype off                   "required!

set rtp+=~/.vim/bundle/vundle/  "set runtimepath
call vundle#rc()

" Let Vundle manage Vundle  
Bundle 'gmarik/vundle'

"File Tree plugin NERDTree
Bundle 'scrooloose/nerdtree'

"File switch from on to another
Bundle 'kien/ctrlp.vim'

"snippets
Bundle 'SirVer/ultisnips'

" Auto complete plugin
Bundle 'Valloric/YouCompleteMe'

"Python mode
Bundle 'klen/python-mode'

" Code comment and decomment
Bundle 'tomtom/tcomment_vim'

Bundle 'majutsushi/tagbar'

" Static syntax checking
Bundle 'scrooloose/syntastic'

Bundle 'Lokaltog/vim-easymotion'

" ColorScheme
"Bundle 'altercation/vim-colors-solarized'
"Bundle 'noahfrederick/vim-noctu'

"Airline
Bundle 'bling/vim-airline'

" Utility
Bundle 'tpope/vim-surround'

Bundle 'junegunn/goyo.vim'

Bundle 'tpope/vim-markdown'

"vimdeck depend on it
Bundle 'SyntaxRange'

"Enable filetype plugins
filetype indent plugin on     " Enable loading the plugin files for specific file types

" Brief help
" :help BundleList              - list configured bundles
" :help BundleInstall(!)        - install(update) bundles
" :help BundleSearch(!) foo     - search for foo
" :help BundleClean             - remove unused bundles

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader=','

" Edit my vimrc file through <leader>ev default leader is \
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Take the contents of given file and execute it in Vimscript, default $MYVIMRC is ~/.vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>

" Type <leader>" vim will surround the word in double quotes
nnoremap <leader>" bi"<esc>lwa"<esc>l

"Automatically append closing characters
" inoremap ( ()<Esc>i
" inoremap ' ''<Esc>i
" inoremap " ""<Esc>i

" To save, press <c-s>
imap <c-s> <ESC>:w<CR>a

" Disable escape key in insert mode, <nop>(no operation)
inoremap jk <esc>

nnoremap <leader>q :q<cr>
nnoremap <leader>qq :q!<cr>
nnoremap <leader>w :w<cr>

" Set how many lines of history Vim has to remember
set history=1000

"Display the line number
set number

set autoindent
set smartindent   
set autoread       " Reload files when changed

set ruler

" set expandtab
set tabstop=4      " Set number of spaces that a <Tab> in the file counts for
set cindent
set shiftwidth=4   " Set width of nested tabs,control  how many columns text is indented with the reindent operations(<<)

" Set code folding method
set foldmethod=syntax

" When setting showcmd, the bottom line will show you information about the
" current command going on
set showcmd

" Set vim default display encode
set encoding=utf-8
"set file encoding when save or new file
set fileencoding=utf-8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Highlight the current line
set cursorline

"Highlight the search result and incremental search
set hlsearch
set incsearch

" Ignore case when searching
set ignorecase

" Status line config
set laststatus=2  "Always show the status line
set t_Co=256

"Set the colortheme of vim
syntax enable
set background=dark
"let g:solarized_bold=0
"let g:solarized_italic=0
"let g:solarized_underline=0
source ~/.vim/colors/radznotcu.vim
"colorscheme radznoctu


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim plugin config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" UltiSnips
autocmd BufNewFile,BufRead *.html.erb set filetype=html.eruby

" NERDTree
let NERDTreeWinSize=30

" ctrlP
let g:ctrlp_extensions = ['tag']

let g:ctrlp_working_path_mode='ra' " c: the directory of the current file; r: the nearest ancestor that contains one of these directories or files:.git .hg .svn .bzr

" Exclude files and directorys
" unlet g:ctrlp_custom_ignore
let g:ctrlp_custom_ignore = {
			\ 'dir': '\v[\/](\.git|\.hg|\.svn)$',
			\ 'file': '\v\.(so|swap|tar|zip|jar|jpg|png|pdf|doc|docx|gz|bz2|rpm|deb)$',
			\}

" TagList
let Tlist_Inc_Winwidth=0
let Tlist_Process_File_Always=1
let Tlist_File_Fold_Auto_Close=1
set autochdir

" TagBar
set tags=./tags,tags;/
let g:tagbar_width=20   " Set tagbar window width

" Vim-airline
let g:airline_powerline_fonts=0 " Let airline plugin use the arrow effect of powerline
let g:airline_detect_whitespace=0 " *trailing[164] is part of the whitespace extension, disable it  
let g:airline_theme="molokai"

" YouComepleteMe
" Set YouCompleteMe trigger key 
let g:ycm_key_list_select_completion = ['<Down>']
let g:ycm_key_list_previous_completion = ['<Up>']

" Syntastic plugin
" check header files for C
let g:Syntastic_c_check_header = 1
let syntastic_mode_map = { 'passive_filetypes': ['html'] } " don't check html

" Goyo
"function! g:goyo_before()
"	silent !tmux set status off
"endfunction

"function! g:goyo_after()
"	silent !tmux set status on
"endfunction

"let g:goyo_callbacks = [function('g:goyo_before'), function('g:goyo_after')]
"noremap <leader>g :Goyo<CR>

" Vim-markdown
let g:vim_markdown_folding_disabled=1

" Set shorcut key
nmap <F2> :NERDTreeToggle<CR>
nmap <F3> :TagbarToggle<CR>

" Stop automatic indentation when copied from another application at insert
" mode
set pastetoggle=<F2>

source $VIMRUNTIME/mswin.vim
behave mswin

" Bash like keys for the command line
cnoremap <C-A>		<Home>
cnoremap <C-E>		<End>
cnoremap <C-K>		<C-U>
cnoremap <C-P> 		<Up>
cnoremap <C-N> 		<Down>


