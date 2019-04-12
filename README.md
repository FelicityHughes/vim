# vim
Vim configuration.
<<<<<<< HEAD

## .vimrc/.gvimrc
```
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
colorscheme pablo
syntax enable
set shiftwidth=2
set expandtab
set number
set cursorline
filetype indent on
set wildmenu
set lazyredraw
set showmatch
set incsearch
set hlsearch
nnoremap <leader><space> :nohlsearch
nnoremap j gj
nnoremap k gk
nnoremap gV `[v`]
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>ev :vsp $MYVIMRC
nnoremap <leader>sv :source $MYVIMRC<CR>
set backupdir=$TEMP//,$TMP//,$TMPDIR//
set directory=.,$TMP//,$TEMP//,$TMPDIR//
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
autocmd filetype crontab setlocal nobackup nowritebackup
autocmd BufRead,BufNewFile *.log set syntax=log4j
au QuickFixCmdPost [^l]* nested cwindow
au QuickFixCmdPost    l* nested lwindow
```
=======
>>>>>>> f9fe0084ca460a3c24c5d034d70010d783bd7245
