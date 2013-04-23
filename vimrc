set nocompatible
set hls
set hidden
set number
set vb t_vb=
set ts=4 sts=4 sw=4 expandtab

if has("autocmd") 
    filetype plugin indent on
endif

if has("gui_running")
    set guifont=Monaco\ 14
endif

" source the vimrc file after saving it
"if has("autocmd")
"    autocmd bufwritepost .vimrc source $MYVIMRC
"endif

" pathogen
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

" solarized
let g:solarized_termtrans  =   0
let g:solarized_degrade    =   0
let g:solarized_bold       =   1
let g:solarized_underline  =   1
let g:solarized_italic     =   1
let g:solarized_termcolors =  16
let g:solarized_contrast   =   "normal"
let g:solarized_visibility =   "normal"
let g:solarized_diffmode   =   "normal"
let g:solarized_hitrail    =   0
let g:solarized_menu       =   1
syntax enable
set background=dark
colorscheme solarized

" fugitive
if has("autocmd")
    autocmd User fugitive
    \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
    \   nnoremap <buffer> .. :edit %:h<CR> |
    \ endif
    autocmd BufReadPost fugitive://* set bufhidden=delete
endif
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

"syntastic
"let g:syntastic_enable_signs=1
"let g:syntastic_auto_loc_list=2
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

