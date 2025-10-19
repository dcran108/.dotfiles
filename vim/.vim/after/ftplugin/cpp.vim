if expand("%:e") == "h"
  setlocal filetype=c
  finish
endif

setlocal cinoptions+=L0,g0,:0
" autocmd Filetype c,cpp setlocal sw=2 ts=8 tw=80| SetupGnuIndent
nnoremap <F5> :w<CR>:!g++ -std=c++20 % && %:p:h/a.out<CR>
