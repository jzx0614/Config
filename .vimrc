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
  let &titlestring=expand("%:t")
  set t_ts=k
  set t_fs=\
  set title
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

if filereadable("/usr/share/dict/words")
    set dictionary+=/usr/share/dict/words
endif

let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_min_syntax_length = 2
let g:neocomplcache_min_keyword_length = 2
let g:neocomplcache_enable_auto_select = 1

let g:neosnippet#enable_snipmate_compatibility = 1							" Enable snipMate compatibility feature.
let g:neosnippet#snippets_directory='~/.vim/bundle/vim-snippets/snippets'	" Tell Neosnippet about the other snippets

" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

nnoremap <F7> :set number!<CR> :set list!<CR>
nmap <F5> :retab<CR> :wqa!<CR>
nmap <F6> :qa<CR>
nmap <F8> :TlistToggle<CR>

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/neosnippet-snippets'

Bundle 'Lokaltog/vim-easymotion'




let $BOOST_ROOT="/opt/include"
"let $RIVENDELL_INCLUDE="/opt/local/include/rivendell"
let $RIVENDELL_SDK_INCLUDE="/home/shine/Program/sdk/include"
let $RIVENDELL_FRAMEWROK_INCLUDE="/home/shine/Program/framework/include"
set path+=$BOOST_ROOT
set path+=$RIVENDELL_SDK_INCLUDE
set path+=$RIVENDELL_FRAMEWROK_INCLUDE

