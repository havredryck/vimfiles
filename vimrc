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
set mousehide               " Hide mouse pointer while typing"
set mousemodel=popup
set history=1000            " Store :cmdline history
set encoding=utf-8          " UTF-8
set ruler                   " Activate ruler
set guioptions-=T           " Disable Toolbar, Scrollbar (GVIM)
set gcr=a:blinkon0          " Disable blinking toolbar



filetype plugin indent on   " Load filetype-specific indent files

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable               " Enable syntax highlighting
autocmd BufEnter * :syntax sync fromstart " Syntax highlighting from start

if has('gui_running')       " Gvim
    set background=light
    colorscheme solarized   " Use Solarized in gvim"
else
    set background=dark
    set t_Co=256
    colorscheme molokai     " Use Molokai in termianl
endif


" Solarized
let g:solarized_contrast="normal"
let g:solarized_visibility="high"
let g:solarized_termcolors=256
let g:solarized_termtrans=1
let g:badwolf_darkgutter = 1

execute "set colorcolumn=" . join(range(81,335), ',')
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
set showmatch

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
" File type specfics
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use only for html/xml
"""""""""""""""""""""""
autocmd FileType html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
autocmd FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/closetag/plugin/closetag.vim

" HTML/XML
""""""""""
autocmd FileType html,xhtml,xml, setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
" autocmd BufNewFile,BufRead *.html,*.htm call SelectHTML()
" let html_no_rendering=1

" CSS
"""""
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" markdown
""""""""""
autocmd BufNewFile,BufRead *.txt,*.markdown,*.md setlocal ft=markdown
autocmd FileType rst setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" vim
"""""
autocmd FileType vim setlocal expandtab shiftwidth=2 tabstop=8 softtabstop=2

" Javascript
""""""""""""
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
let javascript_enable_domhtmlcss=1

" LaTeX
"""""""
autocmd FileType tex setlocal spell spellang=sv
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf = 'latexmk -pdf -f $*'
let g:Tex_ViewRule_pdf = 'evince' 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


