syntax on
set guifontset=8x16,kc15f,-*-16-*-big5-0
set background=dark
set t_Co=256
set bs=2
set hls
set fileencodings=utf-8,big5,gbk,latin1
set fileencoding=utf-8
set nocompatible
set showcmd
set incsearch
highlight Comment ctermfg=darkcyan
highlight Search term=reverse ctermbg=4 ctermfg=7

set softtabstop=4
set shiftwidth=4
set tabstop=4
set number

set laststatus=2
set encoding=utf-8

set cindent

autocmd FileType h,c,cpp,python set expandtab

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set list 
set listchars=tab:>-,nbsp:%,trail:.

if &term =~ "^screen"
  set t_k1=[11~
  set t_k2=[12~
  set t_k3=[13~
  set t_k4=[14~
  let &titlestring=expand("%:t")
  set t_ts=k
  set t_fs=\
  set title
  map OH <HOME>
  imap OH <HOME>
  for [key, code] in [["<F1>", "\eOP"], ["<F2>", "\eOQ"], ["<F3>", "\eOR"], ["<F4>", "\eOS"], ]
    execute "set" key."=".code 
  endfor
endif
let git_root = system('git rev-parse --show-toplevel')
set tags=./tags,../tags,tags

set wildignore+=*.so,*.so.*,*.swp,*.zip,*.o,*.out
set wildignore+=*/tmp/*,*/gen-cpp/*,*/gmock/*
let g:airline_theme='light'

"set fdm=indent
let Tlist_Ctags_Cmd='ctags'
let Tlist_Show_One_File=0
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Process_File_Always=0
let Tlist_Inc_Winwidth=0

let g:EasyGrepMode=2
let g:EasyGrepCommand=0
let g:EasyGrepRecursive=1
let g:EasyGrepIgnoreCase=1

let g:git_blame_width=40

let $BOOST_ROOT="/usr/local/include"
set path+=$BOOST_ROOT

let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_auto_select=0
"let g:neocomplcache_include_paths={'cpp' : '.,/home1/shine/Program//include,/home/shine/Program/framework/include', }
let g:neocomplcache_include_patterns={'cpp' : '^\s*#\s*include', }


if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_force_omni_patterns={}
endif
"let g:neocomplcache_force_omni_patterns.php='[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c='[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplcache_force_omni_patterns.cpp='[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplcache_enable_insert_char_pre = 1

" Close popup by <Space>.
inoremap <expr><CR> pumvisible() ? neocomplcache#close_popup() : "\<CR>"
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

let g:neosnippet#enable_snipmate_compatibility=1 "Enable snipMate compatibility feature.
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets' " Tell Neosnippet about the other snippets

" More neocomplcache candidates.
let g:neocomplcache_max_list = 300

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1

nmap <F1> :cp<CR>
nmap <F2> :cn<CR>

nmap <F3> [c
nmap <F4> ]c
"nnoremap <F7> :AutoCloseToggle<CR>:NeoComplCacheToggle<CR>:set cindent!<CR>:set number!<CR>:set list!<CR>
nnoremap <F7> :NeoComplCacheToggle<CR>:set cindent!<CR>:set number!<CR>:set list!<CR>
nmap <F5> :wqa!<CR>
nmap <F6> :qa<CR>
nmap <F8> :TlistToggle<CR>
nmap <F9> :cclose<CR>
nmap <F10> do

nmap <Leader>1 <Esc>:tabn 1<Enter>
nmap <Leader>2 <Esc>:tabn 2<Enter>
nmap <Leader>3 <Esc>:tabn 3<Enter>
nmap <Leader>4 <Esc>:tabn 4<Enter>
nmap <Leader>5 <Esc>:tabn 5<Enter>
nmap <Leader>6 <Esc>:tabn 6<Enter>
nmap <Leader>7 <Esc>:tabn 7<Enter>
nmap <Leader>8 <Esc>:tabn 8<Enter>

" Vundle 
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
Plugin 'Shougo/neocomplcache'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'

Plugin 'Lokaltog/vim-easymotion'
"Plugin 'Townk/vim-autoclose'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/syntastic'
Plugin 'Vimjas/vim-python-pep8-indent'

call vundle#end()            " required
filetype plugin indent on    " required


