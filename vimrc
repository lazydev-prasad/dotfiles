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
Plugin 'Lokaltog/powerline'     " Powerline fonts plugins
Plugin 'rosenfeld/conque-term'  " Consoles as buffers
Plugin 'garbas/vim-snipmate'    " Snippets Manager
Plugin 'MarcWeber/vim-addon-mw-utils' " dependencies
Plugin 'tomtom/tlib_vim'            " dependencies
Plugin 'mitsuhiko/vim-sparkup'   " Sparkup support
Plugin 'Rykka/riv.vim'          " Restructuretext Plugin
Plugin 'Valloric/YouCompleteMe' " Autocomplete  Plugin
Plugin 'klen/python-mode'       " Python mode
Plugin 'arielrossnigo/dir-configs-override.vim' " Override configs by directory
Plugin 'fisadev/vim-ctrlp-cmdpalette'  " Extension to ctrlp, for fuzzy command finder
Plugin 'kien/tabman.vim'                " Tab list panel
Plugin 'fisadev/FixedTaskList.vim'      " Pending tasks list
Plugin 'Townk/vim-autoclose'            " Autoclose
Plugin 'michaeljsmith/vim-indent-object' " Indent Text Object
Plugin 'jeetsukumaran/vim-indentwise'    " Indentation based movements
Plugin 'fisadev/dragvisuals.vim'         " Drag Visual Blocks around
Plugin 'fisadev/vim-isort'               " Automatically sort python imports
Plugin 't9md/vim-choosewin'              " Window Chooser
Plugin 'lilydjwg/colorizer'              " Paint CSS Color with the real color
Plugin 'mileszs/ack.vim'                 " Ack code search
if has('python')
    Plugin 'pignacio/vim-yapf-format'    " YAPF formatter for python
endif
Plugin 'vim-scripts/IndexedSearch'        " Search results counter
Plugin 'vim-scripts/matchit.zip'          " XML/HTML tags navigation
Plugin 'vim-scripts/Wombat'               " Gvim Colorscheme
Plugin 'vim-scripts/YankRing.vim'         " Yank history navigation
Plugin 'Shougo/neocomplcache.vim'         " Better Autocompletion





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


" enable usage of additional .vimrc files from working directory
set exrc

" prohibit .vimrc file to execute shell, create files, etc..
set secure

" Additional mappings for Esc
inoremap jj <Esc>
inoremap jk <Esc>

" tab length exceptions on some file types
autocmd FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType htmldjango setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4

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
	colorscheme wombat
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

set completeopt-=preview

" Simple recursive grep
nmap ,r :Ack
nmap ,wr :Ack <cword><CR>

" better backup, swap and undos storage
set directory=~/.vim/dirs/tmp           " directory to place swap files in
set backup                              " make backup files
set backupdir=~/.vim/dirs/backups       " where to put backup files
set undofile                            " persistent undos - undo after you re-open the file
set undodir=~/.vim/dirs/undos
set viminfo+=n~/.vim/dirs/viminfo

" store yankring history file there too
let g:yankrink_history_dir='~/.vim/dirs/'

" create needed directories if they don't exist
if !isdirectory(&backupdir)
    call mkdir(&backupdir, "p")
endif
if !isdirectory(&directory)
    call mkdir(&directory,"p")
endif
if !isdirectory(&undodir)
    call mkdir(&undodir, "p")
endif

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
map <leader>bd :BClose<cr>:tabclose<cr>gT

" Close all the buffers
map <leader>ba :bufdo bd<cr>


map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

" Useful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tq :tabclose<cr>
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
let g:airline_theme = 'badwolf'
let g:airline_powerline_fonts=1
let g:airline_left_sep='>>'
let g:airline_right_sep='<<'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extension#tabline#fnamemod=':t'


"""""""""""""""""""""""""""""""""""
"   => Tagbar Settings  <=
"
"""""""""""""""""""""""""""""""""""
let g:tagbar_autofocus=0
let g:tagbar_width=42
autocmd BufEnter *.py :call tagbar#autoopen(0)
autocmd BufWinLeave *.py :TagbarClose

"""""""""""""""""""""""""""""""""""
"   =>  Tasklist    <=
"
"""""""""""""""""""""""""""""""""""
" Show pending tasks list
map <F2> :TaskList<CR>

"""""""""""""""""""""""""""""""""""
"   => CtrlP    <=
"
"""""""""""""""""""""""""""""""""""
let g:ctrlp_map = ',e'

" tags(symbols) in current file finder mapping
nmap ,g :CtrlPBufTag<CR>

" tags(symbols) in all files finder mapping
nmap ,G :CtrlPBufTagAll<CR>

" general code finder in all files mapping
nmap ,f :CtrlPLine<CR>

" recent files finder mapping
nmap ,m :CtrlPMRUFiles<CR>
" commands finder mapping
nmap ,c :CtrlPCmdPalette<CR>

" to be able to call CtrlP with default search text
function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    call feedkeys(a:search_text)
endfunction

" sams as previous mappings, but calling with current word as default text
nmap <leader>wg :call CtrlPWithSearchText('<cword>'), 'BufTag')<CR>
nmap <leader>wG :call CtrlPWithSearchText('<cword>'), 'CtrlPBufTagAll')<CR>
nmap <leader>wf :call CtrlPWithSearchText('<cword>'), 'Line')<CR>
nmap <leader>we :call CtrlPWithSearchText('<cword>'), '')<CR>
nmap <leader>pe :call CtrlPWithSearchText('<cfile>'), '')<CR>
nmap <leader>wm :call CtrlPWithSearchText('<cword>'), 'MRUFiles')<CR>
nmap <leader>wc :call CtrlPWithSearchText('<cword>'), 'CmdPalette')<CR>

" don't change working directory
let g:ctrlp_working_path_mode = 0

" ignore these files and folders on file finder
let g:ctrlp_custom_ignore = {
            \ 'dir' : '\v[/\](\.git|\.hg|\.svn|node_modules)$',
            \ 'file': '\.pyc$\|\.pyo$',
            \ }

"""""""""""""""""""""""""""""""""""
"   => Syntastic    <=
"
"""""""""""""""""""""""""""""""""""
" show list of errors and warnings on the current file
nmap <leader>e :Errors<CR>

" check also when just opened the file
let g:syntastic_check_on_open = 1

" don't put icons on the sign column
let g:syntastic_enable_signs = 0


"""""""""""""""""""""""""""""""""""
"   => Jedi-Vim <=
"
"""""""""""""""""""""""""""""""""""

" All these mappings work on for python code
" Go to definition
let g:jedi#got_command = ',d'

" Find occurences
let g:jedi#usages_command = ',o'

" Find assignments
let g:jedi#goto_assignments_commadn = ',a'

" Go to definition in new tab
nmap <leader>D :tab splig<CR>:call jedi#goto()<CR>


""""""""""""""""""""""""""""""""""
"   => NeoComplCache    <=
"
""""""""""""""""""""""""""""""""""

let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_ignore_case = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_auto_select = 1
let g:neocomplcache_enable_fuzzy_completion = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_fuzzy_completion_start_length = 1
let g:neocomplcache_auto_completion_start_length = 1
let g:neocomplcache_manual_copmletion_start_lenth = 1
let g:neocomplcache_min_keyword_length = 1
let g:neocomplcache_min_syntax_length = 1
" complete with works form any opened file
let g:neocomplcache_same_filetype_lists = {}
let g:neocomplcache_same_filetype_lists._= '_'
let g:neocomplete#force_overwrite_completefunc=1

"""""""""""""""""""""""""""""""""""
"   => Drag Visuals <=
"
"""""""""""""""""""""""""""""""""""

" mappings to move blaock in 4 directions
vmap <expr> <S-M-LEFT> DVB_Drag('left')
vmap <expr> <S-M-RIGHT> DVB_Drag('right')
vmap <expr> <S-M-DOWN> DVB_Drag('down')
vmap <expr> <S-M-UP> DVB_Drag('up')

" mapping to duplicate block
vmap <expr> D DVB_Duplicate()
"""""""""""""""""""""""""""""""""""
"   => Snipmate Settings
"
"""""""""""""""""""""""""""""""""""
let g:snippets_dir='~/.vim/vim-snippets/snippets'


"""""""""""""""""""""""""""""""""""
"   => Python Settings <=
"
"""""""""""""""""""""""""""""""""""
" python executables for different plugins
let g:pymode_python = 'python'
let g:syntastic_python_python_exec='python'

" rope
let g:pymode_rope=0
let g:pymode_rope_completion=0
let g:pymode_rope_complete_on_dot=0
let g:pymode_rope_auto_project=0
let g:pymode_rope_enable_autoimport=0
let g:pymode_rope_autoimport_generate=0
let g:pymode_rope_guess_project=0

" documentation
let g:pymode_doc=0
let g:pymode_doc_key='K'

" lints
let g:pymode_lint=0

" virtualenv
let g:pymode_virtualenv=1

" breakpoints
let g:pymode_breakpoint=1
let g:pymode_breakpoint_key='<leader>b'

" syntax highlight
let g:pymode_syntax=1
let g:pymode_syntax_slow_sync=1
let g:pymode_syntax_all=1
let g:pymode_syntax_print_as_function=g:pymode_syntax_all
let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_self=g:pymode_syntax_all
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_string_formatting=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all
let g:pymode_syntax_string_format=g:pymode_syntax_all
let g:pymode_syntax_string_templates=g:pymode_syntax_all
let g:pymode_syntax_doctests=g:pymode_syntax_all
let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
let g:pymode_syntax_builtin_types=g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
let g:pymode_syntax_docstrings=g:pymode_syntax_all

" highlight 'long' lines (>= 80 symbols) in python files
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python,rst,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python,rst,c,cpp match Excess /\%81v.*/
    autocmd FileType python,rst,c,cpp set nowrap
    autocmd FileType python,rst,c,cpp set colorcolumn=80
augroup END

" code folding
let g:pymode_folding=0

" pep8 indents
let g:pymode_indent=1

" code running
let g:pymode_run=1
let g:pymode_run_bind='<F5>'

" syntastic
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_enable_signs=1
let g:syntastic_check_on_wq=0
let g:syntastic_aggregate_errors=1
let g:syntastic_loc_list_height=5
let g:syntastic_error_symbol='X'
let g:syntastic_style_error_symbol='X'
let g:syntastic_warning_symbol='x'
let g:syntastic_style_warning_symbol='x'
let g:syntastic_python_checkers=['flake8', 'pydocstyle', 'python']

" YouCompleteMe
set completeopt-=preview

let g:ycm_global_ycm_extra_conf='~/.vim/ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0

nmap <leader>g :YcmCompleter GoTo<CR>
nmap <leader>d :YcmCompleter GoToDefinition<CR>
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
