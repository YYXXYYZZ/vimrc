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
<<<<<<< HEAD
" Plugin 'jeaye/color_coded'
=======
Plugin 'jeaye/color_coded'
>>>>>>> eab1b9ec222b60d825d044299678b1b4fa7a81cf
Plugin 'rdnetto/YCM-Generator'
Plugin 'scrooloose/nerdtree'
Plugin 'wincent/command-t'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Bundle 'vim-ruby/vim-ruby'
Bundle 'scrooloose/nerdcommenter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-surround'
Plugin 'vim-scripts/taglist.vim'
<<<<<<< HEAD
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'JamshedVesuna/vim-markdown-preview'
=======
>>>>>>> eab1b9ec222b60d825d044299678b1b4fa7a81cf
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

" taglist
nnoremap <silent> <F8> :TlistToggle<CR>
let g:Tlist_Use_Right_Window = 1
let g:Tlist_WinWidth = 50

" ruby
autocmd FileType ruby nmap <F5> : !ruby % <cr>

" c++
autocmd FileType cpp map <F6> : set filetype=cpp <CR>
autocmd FileType cpp map <F4> : A <CR>

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
set showcmd
"set colorcolumn=80
<<<<<<< HEAD

" markdown
let vim_markdown_preview_github=1
=======
>>>>>>> eab1b9ec222b60d825d044299678b1b4fa7a81cf
