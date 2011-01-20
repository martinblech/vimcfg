" disable vi compatibility
set nocompatible

" filetype detection
filetype plugin on
filetype on
filetype indent on

" auto-complete
set ofu=syntaxcomplete#Complete
set completeopt=menuone,longest,preview

" Auto close the preview window
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" global indentation settings
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set smarttab

" highlight current line
set cursorline

" syntax highliting
syntax on

" incremental hl search
set hlsearch
set incsearch

" sudo-write
cmap w!! %!sudo tee > /dev/null %

" tab navigation
map <C-l> gt
map <C-h> gT

" nice colors
colorscheme desert

" NERDTree
map <F2> :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1

" TagList
map <F3> :TlistToggle<CR>
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_Close_On_Select = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Sort_Type = "order"
let Tlist_Show_One_File = 1

" (ctags) go to definition in a new tab
"map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
map <C-\> :tab split<CR>:exec("tjump ".expand("<cword>"))<CR>
