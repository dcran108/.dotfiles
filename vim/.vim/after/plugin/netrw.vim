vim9script

g:netrw_banner = 0
g:netrw_keepdir = 0

autocmd FileType netrw set noautochdir
autocmd FileType * if &filetype != 'netrw'| set autochdir| endif

autocmd WinEnter netrw set noautochdir
autocmd WinEnter * if &filetype != 'netrw'| set autochdir| endif
