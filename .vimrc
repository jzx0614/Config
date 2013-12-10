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

autocmd FileType h,c,cpp,py set expandtab
autocmd FileType h,c,cpp,py set list | set lcs=tab:>-,nbsp:%,trail:.


"set fdm=indent
let Tlist_Ctags_Cmd='ctags' 
let Tlist_Show_One_File=0 
let Tlist_File_Fold_Auto_Close=1 
let Tlist_Exit_OnlyWindow=1 
let Tlist_Process_File_Always=0 
let Tlist_Inc_Winwidth=0

let g:EasyGrepMode=2
let g:git_blame_width=40
nmap <F6> :qa<CR>
nmap <F5> :retab<CR> :wqa!<CR>

nmap <F8>   :TrinityToggleAll<CR>
nmap <F9>   :TrinityToggleSourceExplorer<CR>
nmap <F10>  :TrinityToggleTagList<CR>
nmap <f11>  :TrinityToggleNERDTree<CR>


set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'mileszs/ack.vim'
Bundle 'fcamel/gj'
