syntax on
set guifontset=8x16,kc15f,-*-16-*-big5-0
set background=dark
set t_Co=256
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

autocmd FileType h,c,cpp,py,thrift set expandtab

set list 
set listchars=tab:>-,nbsp:%,trail:.

if &term == "screen"
  set t_k1=[11~
  set t_k2=[12~
  set t_k3=[13~
  set t_k4=[14~
  let &titlestring=expand("%:t")
  set t_ts=k
  set t_fs=\
  set title
"  map OH <HOME>
"  imap OH <HOME>
endif


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

let $BOOST_ROOT="/opt/include"
let $RIVENDELL_SDK_INCLUDE="/home/shine/Program/sdk/include"
let $RIVENDELL_FRAMEWROK_INCLUDE="/home/shine/Program/framework/include"
set path+=$BOOST_ROOT
set path+=$RIVENDELL_SDK_INCLUDE
set path+=$RIVENDELL_FRAMEWROK_INCLUDE

let g:neocomplcache_enable_at_startup=1
let g:neocomplcache_enable_auto_select=0
let g:neocomplcache_include_paths={'cpp' : '.,/opt/include,/home/shine/Program/sdk/include,/home/shine/Program/framework/include', }
let g:neocomplcache_include_patterns={'cpp' : '^\s*#\s*include', }


if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_force_omni_patterns={}
endif
let g:neocomplcache_force_omni_patterns.php='[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_force_omni_patterns.c='[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplcache_force_omni_patterns.cpp='[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'

let g:neocomplcache_clang_use_library=1
let g:neocomplcache_clang_user_options= ''
let g:neocomplcache_clang_debug=1

let g:neosnippet#enable_snipmate_compatibility=1 "Enable snipMate compatibility feature.
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets' " Tell Neosnippet about the other snippets

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

nnoremap <F7> :set number!<CR> :set list!<CR>
nmap <F5> :wqa!<CR>
nmap <F6> :qa<CR>
nmap <F8> :TlistToggle<CR>

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/neosnippet-snippets'
Bundle 'Shougo/neocomplcache-clang'

Bundle 'Lokaltog/vim-easymotion'
Bundle 'Townk/vim-autoclose'

