" Set 'nocompatible' to ward off unexpected things that your distro might
" have made, as well as sanely reset options when re-sourcing .vimrc
set nocompatible

" Attempt to determine the type of a file based on its name and possibly its
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific.
filetype plugin indent on

" Enable syntax highlighting
syntax on

" Better command-line completion
set wildmenu

" Show partial commands in the last line of the screen
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Use case insensitive search, except when using capital letters
set ignorecase
set smartcase

" Allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" When opening a new line and no filetype-specific indenting is enabled, keep
" the same indent as the line you're currently on. Useful for READMEs, etc.
set autoindent

" Stop certain movements from always going to the first character of a line.
" While this behaviour deviates from that of Vi, it does what most users
" coming from other editors would expect.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window
set ruler

" Always display the status line, even if only one window is displayed
set laststatus=2

" Instead of failing a command because of unsaved changes, instead raise a
" dialogue asking if you wish to save changed files.
set confirm

" Use visual bell instead of beeping when doing something wrong
set visualbell

" Set the command window height to 2 lines, to avoid many cases of having to
" `press <Enter> to continue`
set cmdheight=2

" Display line numbers on the left
set number

" Quickly time out on keycodes, but never time out on mappings
set notimeout ttimeout ttimeoutlen=200

" Indentation settings for using 2 spaces instead of tabs.
" Do not change 'tabstop' from its default value of 8 with this setup.
set shiftwidth=2
set softtabstop=2
set expandtab
 
" Indentation settings for using hard tabs for indent. Display tabs as
" four characters wide.
"set shiftwidth=4
"set tabstop=4

" Show white spaces
set list
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶,precedes:«,extends:»
hi Whitespace ctermfg=LightGray
match Whitespace /\(\s\|\n\|\t\)/

" Higlight cursor line
set cursorline
hi CursorLine ctermbg=15 cterm=NONE
hi CursorLineNr ctermbg=15

" Open new split panes to right and bottom, which feels more natural than Vim’s default:
set splitbelow
set splitright

" === === === Mappings === === ===
nnoremap <Leader>e :Explore<CR>

" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Use gb to switch between buffers
nnoremap gb :ls<CR>:b<Space>

" === === === Plugins === === ===

" netrw
let g:netrw_liststyle = 3
" NERDTree
" toggle nerd tree with ctrl+n
" map <C-n> :NERDTreeToggle<CR>

" FZF
set rtp+=~/.fzf
