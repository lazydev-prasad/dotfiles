set nocompatible  			"be iMproved, required
filetype off				" required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-markdown'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'tpope/vim-commentary'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'hhvm/vim-hack'
Plugin 'elzr/vim-json'
Plugin 'ervandew/supertab'
Plugin 'majutsushi/tagbar'
Plugin 'easymotion/vim-easymotion'
Plugin 'mattn/emmet-vim'
Plugin 'justinmk/vim-sneak'
Plugin 'honza/vim-snippets'
Plugin 'tpope/vim-surround'
Plugin 'Chiel92/vim-autoformat'
Plugin 'severin-lemaignan/vim-minimap'
Plugin 'dsawardekar/wordpress.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mbbill/undotree'
Plugin 'mhinz/vim-startify'
Plugin 'vim-scripts/darktango.vim'
Plugin 'morhetz/gruvbox'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-repeat'
Plugin 'flazz/vim-colorschemes'
Plugin 'nvie/vim-flake8'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'jlanzarotta/bufexplorer'


call vundle#end()


"""""""""""""""""""""""""""""""""""""
" => General <=

"""""""""""""""""""""""""""""""""""""

" Sets how many lines of history VIM has to remember
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from outside
set autoread

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>




""""""""""""""""""""""""""""""""""""""""""""""""""""
"	=>	VIM user interface	<=
"
""""""""""""""""""""""""""""""""""""""""""""""""""""


" Set 7 lines to the cursor - when moving vertically using j/k
set so=7


" Turn on the Wild menu
set wildmenu


set wildignore=*.0,*~,*.pyc
if has("win16") || has("win32")
	set wildignore+=.git\*,.hg\*,.svn\*
else
	set wildignore+=*/git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif


" Always show current position
set ruler


" Height of the command bar
set cmdheight=2

" A buffer becomes hidden when it is abandoned
set hid

" Set line numbers
set number

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
set foldcolumn=1


""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	=>	Colors and Fonts	<=
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Enable syntax highlighting
syntax enable

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
	set t_Co=256
endif

try
	colorscheme gruvbox
catch
    colorscheme desert
endtry

" Set guifont
try
    set guifont=Consolas\ 12
catch
endtry

set hidden
set background=dark

" Set extra options when running in GUI mode
if has("gui_running")
	set guioptions-=T
	set guioptions-=e
	set t_Co=256
	set guitablabel=%M\ %t
endif

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	=>	Files, backups and undo		<=
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git et.c anyway..
set nobackup
set nowb
set noswapfile


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	=>	Text, tab and indent related	<=
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai		" Auto indent
set si 		" Smart indent
set wrap	" Wrap lines

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"	=> Visual mode related
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   => Moving around, tabs, windows and buffers
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <Space> to / (search) and Ctrl-<Space> to ? (backgwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Close the current buffer
map <leader>bd :Bclose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>


map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
map <leader>t<leader> :tabnext

" Let 'tl' toggle between this and the last accessed tab
let g:lasttab = 1
nmap <leader>tl :exe "tabn".g:lasttab<CR>
au TabLeave * let g:lasttab = tabpagenr()

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Switch CWD to the current directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Specify the behavior when swtiching between buffers
try
    set switchbuf=useopen,usetab,newtab
    set stal=2
catch
endtry

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g\"" | endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"   => Status line  <=
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Always show the status line
set laststatus=2


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       =>  Editing mappings    <=
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Rempa VIM 0 to first non-blank character
map 0 ^

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"       => Spell Checking   <=
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Pressing ,ss wil toggle and untoggle spell checking
map <leader>ss :setlocal spell!<cr>

" Shortcuts using leader
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

"""""""""""""""""""""""""""""""""""
"   => Airline  <=
""""""""""""""""""""""""""""""""""
let g:airline_left_sep='>>'
let g:airline_right_sep='<<'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extension#tabline#fnamemod=':t'

"""""""""""""""""""""""""""""""""""
"   => NerdTree  <=
""""""""""""""""""""""""""""""""""
let NERDTreeHighlightCursorline=1
let NERDTreeIgnore=['\~$','.*\.pyc$','pip-log\.txt$','whoosh_index','.*.pid','monitor.py','.*-fixtures-.*.json','.*\.o$','db.db','tags.bak']
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDChristmasTree = 1
let NERDTreeChDirMode = 2
let NERDTreeMapJumpFirstChild = 'gK'
nmap <F5> :NERDTreeToggle<CR>
set scrolloff=3
set sidescrolloff=15
set splitbelow
set splitright

"""""""""""""""""""""""""""""""""""
"       => BufExplorer <=
"""""""""""""""""""""""""""""""""""
" Buffers - explore/next/previous: Alt-F12, F12,Shift-F12.
nnoremap <silent> <M-F12> :BufExplorer<CR>
nnoremap <silent> <F12> :bn<CR>
nnoremap <silent> <S-F12> :bp<CR>

"""""""""""""""""""""""""""""""""""
"       =>  Helper Functions    <=
"""""""""""""""""""""""""""""""""""
" Don't close window, when deleting a buffer
command! BClose call <SID>BufcloseCloseIt()

function! <SID>BufcloseCloseIt()
    let l:currentBufNm = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

function! CmdLine(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunction

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "","")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "'")
    elseif a:direction == 'replace'
        call CmdLine "%s" . '/' . l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction
