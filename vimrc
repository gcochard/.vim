let mapleader = ","
execute pathogen#infect()
filetype plugin indent on
set expandtab softtabstop=2 tabstop=2 shiftwidth=2 smartindent smarttab
set background=dark
colorscheme solarized
"let g:syntastic_javascript_checkers = ['jslint']
let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_checkers = ['eslint', 'jslint']
"let g:syntastic_python_checkers = ['python', 'flake8', 'pylint']
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
nnoremap + :s/\v^(\s+)?/\1\/\//<CR>
nnoremap - :s/\v^(\s+)?\/\//\1/<CR>
nnoremap <leader>+ :*s//\/*\1*\//<CR>
set number
set hlsearch
nnoremap <CR> :nohlsearch <CR><CR>
cnoremap sudow w !sudo tee % >/dev/null
" Append modeline after last line in buffer.
" Use substitute() instead of printf() to handle '%%s' modeline in LaTeX
" files.
function! AppendModeline()
  let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d %set :",
        \ &tabstop, &shiftwidth, &textwidth, &expandtab ? '' : 'no')
  let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
  call append(line("$"), l:modeline)
endfunction
nnoremap <leader>ml :call AppendModeline()<CR>
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :sou $MYVIMRC<CR>
"iabbrev @@ greg.cochard@gmail.com
noremap <left> <nop>
noremap <right> <nop>
noremap <up> <nop>
noremap <down> <nop>
nnoremap <leader>; execute "normal! mqA;\<esc>`q"
cnoremap p4o w!<CR>:!p4 open %<CR>
cnoremap p4l !p4 login<CR>  
cnoremap <leader>w execute "normal! :match Error " . '/\v +$/' . "\<CR>"
cnoremap <leader>W execute "normal! :match Error /\v^$/\<CR>"
nnoremap / /\v
set linebreak
" add yaml stuffs
au! BufNewFile,BufReadPost *.{yaml,yml} set filetype=yaml foldmethod=indent
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

set ignorecase
set smartcase
let g:jsx_ext_required = 0
set directory^=$HOME/.vim/tmp//
