" Things i'm always forgetting:
" gj moves down to next wrapped line (same with g$ etc) - this is now default!
" gq3j gq reformats the line - alias to <leader>q
" <leader>cs will comment out selected text
" ead expands each with block, see also eai, cla
" mA sets a global mark. 'A will return to it

" Largely derived from http://stevelosh.com/blog/2010/09/coming-home-to-vim/

" pathogen setup. hmm.. pathogen isn't playing well with my install.
" investigate later. Seems like people are distributing with vim bundles more
" and more
"filetype off
"call pathogen#runtime_append_all_bundles()
"call pathogen#helptags()
"filetype plugin indent on

" remove legacy crap
set nocompatible
set modelines=0

filetype plugin indent on

" Tabs. I'm all about 2
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" some random stuff
" set encoding=utf-8
set title " set the title of the terminal
set number
set scrolloff=3 " always keep N lines above or below cursor
set autoindent
set showmode
set showcmd
set hidden " keep hidden buffers
set wildmenu
set wildmode=list:longest " can't say i understand this
set cursorline " highlight current line
set ttyfast " probably on by default
set ruler " show coords
set backspace=indent,eol,start " backspace over anything
set laststatus=2 " always a status line
" option to use relative numbers, still playing with this.
set relativenumber " I'm getting into this
set undofile " I LOVE THIS

" change leader from \ to ,
let mapleader = ","

" regex and searching
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault " always global
" set incsearch
set showmatch
set hlsearch
" clear highlighted searches with leader space
nnoremap <leader><space> :noh<cr>

" use tab instead of %
nnoremap <tab> %
vnoremap <tab> %

" wrapping preferences
set wrap
set textwidth=79
set formatoptions=qrn1
" set colorcolumn=85

" invisible characters
" set list
" set listchars=tab:▸\ ,eol:¬

" disable arrow to make me hard
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" make screen movement the default for up and down
nnoremap j gj
nnoremap k gk

" make f1 act like escape if i miss
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" means i can use ; instead of :  hmmm.. not sure how useful this is
nnoremap ; :

" save if window loses focus
au FocusLost * :wa " only in gui

" make splits easier to navigate
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" quicker para formatting
nnoremap <leader>q gqip
" reselect pasted text
nnoremap <leader>v V`]

" Backups
set backupdir=~/.tmp/backup// " backups
set directory=~/.tmp/swap//   " swap files
set backup                        " enable backups

" colour!
syntax on
" set background=dark
"colorscheme 

" yring
nnoremap <silent> <leader>y :YRShow<cr>

" Rainbows!
nmap <leader>R :ToggleRaibowParenthesis<CR>

" Edit .vimrc
nmap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<cr>

" disable to start with
let g:JSLintHighlightErrorLine = 0

" toggle paste mode with f2
set pastetoggle=<F2>

" sudo write
cmap w!! w !sudo tee % >/dev/null

" toggle mouse. hmm.. mouse=a doesn't do shit. maybe term settings?
"noremap <F5> :call <SID>ToggleMouse()<CR>
"inoremap <F5> <Esc>:call <SID>ToggleMouse()<CR>a

" make a better status line with some git info in it
set statusline=%F%m%r%h%w\ [POS=%04l,%04v][%p%%]\ [%{fugitive#statusline()}]
