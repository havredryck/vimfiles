"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ~/.vim/vimrc
" Author: havedryck
"
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use pathogen to modify the runtime path to include
" all plugins in ~/.vim/bundle
call pathogen#helptags()
execute pathogen#infect()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UI stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible            " Use Vim settings
set number                  " Show line numbers
set showcmd                 " Show command in bottom bar
set cursorline              " Highlight current line
set wildmenu                " Visual autocomplete for command menu
set lazyredraw              " Redraw only when we need to.
set showmatch               " Highlight matching [{()}]
set mouse=a                 " Enable the use of the mouse.
set history=1000            " Store :cmdline history
set encoding=utf-8          " UTF-8

filetype plugin indent on   " Load filetype-specific indent files

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable               " Enable syntax highlighting

if has('gui_running')       " Gvim
    set background=light
    colorscheme solarized   " Use solarized as colorschem in gvim
else
    set background=dark         
    "colorscheme solarized  "Using solarized in terminal instead
endif



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab               " Use spaces instead of tabs
set smarttab                " Smart tabs

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

set ai                      " Auto indent
set si                      " Smart indent
set wrap                    " Dont Wrap lines
set linebreak               " wrap lines at convenient points
set textwidth=80            " Text width

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Searching
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set incsearch               " Search as characters are entered
set hlsearch                " Highlight matches

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Backup and swapfile
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set backup                          " Enable backups
set noswapfile                      " Disable swapfile

set undodir=~/.vim/tmp/undo//       " Undo files
set backupdir=~/.vim/tmp/backup//   " Backups
set directory=~/.vim/tmp/swap//     " Swap files

" Make folders if they dont exist
if !isdirectory(expand(&undodir))
    call mkdir(expand(&undodir), "p")
endif
if !isdirectory(expand(&backupdir))
    call mkdir(expand(&backupdir), "p")
endif
if !isdirectory(expand(&directory))
    call mkdir(expand(&directory), "p")
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle NERDTree with
map <f2> :NERDTreeToggle<CR> 


" Close vim if the only windows left open is NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


