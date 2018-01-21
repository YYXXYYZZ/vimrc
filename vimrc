set nocompatible              " be iMproved, required
filetype off                  " required

call plug#begin('~/.vim/plugged')

Plug 'VundleVim/Vundle.vim'
Plug 'vim-scripts/a.vim'
Plug 'Valloric/YouCompleteMe'
"Plug 'jeaye/color_coded'
Plug 'rdnetto/YCM-Generator'
Plug 'scrooloose/nerdtree'
Plug 'wincent/command-t'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/taglist.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'JamshedVesuna/vim-markdown-preview'
Plug 'danro/rename.vim'
Plug 'fatih/vim-go'
Plug 'easymotion/vim-easymotion'

call plug#end()

filetype plugin indent on    " required

" restore the old position
if has("autocmd")
		au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

" nerd tree
if has('gui_running')
	au VimEnter *  NERDTree
endif
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

" go
let g:go_highlight_types = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1

" comment
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1
" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

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
" markdown
let vim_markdown_preview_github=1
