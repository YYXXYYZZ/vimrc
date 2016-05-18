set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/a.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jeaye/color_coded'
Plugin 'rdnetto/YCM-Generator'
Plugin 'scrooloose/nerdtree'
Plugin 'wincent/command-t'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Bundle 'vim-ruby/vim-ruby'
Bundle 'scrooloose/nerdcommenter'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" restore the old position
if has("autocmd")
		au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" nerd tree
nmap <Leader>nt :NERDTreeToggle<CR>
let NERDTreeWinSize=32
let NERDTreeWinPos="left"
let NERDTreeMinimalUI=1
let NERDTreeAutoDeleteBuffer=1

" YCM
let g:ycm_confirm_extra_conf=0
let g:ycm_seed_identifiers_with_syntax=1
map <F2> :YcmCompleter GoToDefinitionElseDeclaration <CR>

" color coded
let g:color_coded_enabled = 1

" utilsnips
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrigger="<leader><s-tab>"
let g:UltiSnipsSnippetDirectories=["vim-snippets/UltiSnips"]

" ruby
autocmd FileType ruby nmap <F5> : !ruby % <cr>

" c++
autocmd FileType cpp map <F6> : set filetype=cpp <CR>
autocmd FileType cpp map <F4> : A <CR>
autocmd FileType cpp map <Leader>cc :CCtoggle<CR>

" other
nmap <Leader>1 :nohlsearch<CR>
colorscheme desert
set nu
set hlsearch
set cursorline
set laststatus=2
syntax on
filetype on
filetype indent on
filetype plugin on
set tabstop=4
set softtabstop=4
set shiftwidth=4

set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
"set colorcolumn=80
