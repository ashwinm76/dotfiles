" No VI compatibility
set nocompatible

execute pathogen#infect()

" Remap the cursor keys to the home keys
"noremap ; l
"noremap l k
"noremap k j
"noremap j h

" Show line numbers
set number

" Always show the tab line
set showtabline=2

" New lines are autoindented by 2 spaces
set shiftwidth=2

" Expand tabs to spaces
set expandtab

" Enable nerd fonts for the gui
set guifont=mononoki\ Nerd\ Font\ Mono\ 10

set encoding=utf8

" Set the colourscheme
set background=dark
colorscheme solarized

" Pascal options
autocmd BufNewFile,BufRead *.pas,*.lpr :compiler fpc
let pascal_fpc=1
let pascal_delphi=1

" Enable filetype detection, filetype plugins and filetype indentation
if has('autocmd')
  filetype plugin indent on
endif

" Enable syntax highlighting
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" Enable autoindenting of new lines
set autoindent

" Smarttab uses shiftwidth and tabstops
set smarttab

" Backspace over autoindent, line breaks and start of insert
set backspace=indent,eol,start

" Dont look at #includes when autocompleting
set complete-=i

" Look at source files in the current directory when autocompleting
set complete+=s./*.c,s./*.cpp,s./*.h,s./*.pas,s./*.lpr

" Ignore case when searching and autocompleting
set ignorecase

" Dont consider octal numbers when doing CTRL-A
set nrformats-=octal

" Enable incremental searches
set incsearch

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" The last window always has a status line
set laststatus=2

" Enable a menu for command line completion hints
set wildmenu

" Always show 2 lines above or below the cursor line when scrolling vertically
if !&scrolloff
  set scrolloff=1
endif


" Always show 5 columns to the left or right if the cursor line when scrolling
" horizontally
if !&sidescrolloff
  set sidescrolloff=5
endif

" Indicate a truncated display of the last line on screen with @@@
set display+=lastline

" Delete comment character when joining commented lines
set formatoptions+=j

" Automatically reload a file if it has been modified outside vim but is
" unchanged in vim
set autoread
