"colorscheme xoria256        " awesome colorscheme
colorscheme badwolf        " awesome colorscheme
"colorscheme desert
syntax enable " enable syntax processing

set nocompatible   " Disable vi-compatibility
set t_Co=256

" For plugins to load correctly
filetype plugin indent on

set guifont=menlo\ for\ powerline:h16
set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
set linespace=15

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start
set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
"set tabstop=4                   " a tab is four spaces
"set smarttab
set tags=tags
"set softtabstop=4               " when hitting <BS>, pretend like a tab is removed, even if spaces
"set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=4                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
"set number                      " always show line numbers
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,i
set cursorline                  " highlight currnt line
set wildmenu            	" visual autocomplete for command menu
set lazyredraw          	" redraw only when we need to.
set showmatch           	" highlight matching [{()}]
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell           	" don't beep
set noerrorbells         	" don't beep
set autowrite  			"Save on buffer switch
set paste			" Paste w/o comment formatting
set ruler			" show column and line number in statusbar
"set mouse=r		" Allow mouse scroll

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting

" Status bar
set laststatus=2

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
highlight Search cterm=underline ctermfg=Black ctermbg=Yellow

" reload cscope tags
map <F5> :!cscope -Rb<CR>:cs reset<CR><CR>

" 80 char limit
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

" git merge tool commands
map <F2> :diffget LO

" vim close all files
map <F4> :cq

" change split to horizontal
nnoremap <C-H> <C-W><S-J>

" change split to vertical
nnoremap <C-V> <C-W><S-H>
