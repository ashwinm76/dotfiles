execute pathogen#infect()

" search options
set hls

" Remap the cursor keys to the home keys
noremap ; l
noremap l k
noremap k j
noremap j h

" Show line numbers
set number

" Show 80-char column
set colorcolumn=81

" Tabs and indenting
set shiftwidth=2
set expandtab

" Enable powerline fonts
let g:airline_powerline_fonts = 1
set encoding=utf8

" Set the colourscheme
colorscheme base16-default-dark

" Set the airline theme
let g:airline_theme='base16_default'

" Pascal options
autocmd BufNewFile,BufRead *.pas :compiler fpc
let pascal_fpc=1
let pascal_delphi=1

