let mapleader = ","
execute pathogen#infect()
filetype plugin indent on
set expandtab softtabstop=4 tabstop=4 shiftwidth=4 smartindent smarttab
set background=dark
if has("gui_running")
    colorscheme solarized
else
    colorscheme slate
endif
"let g:syntastic_javascript_checkers = ['jslint']
let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_checkers = ['eslint', 'jslint']
let g:syntastic_aggregate_errors = 1
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
iabbrev @@ greg.cochard@gmail.com
iabbrev copy Copyright 2014 Greg Cochard, all rights reserved.
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
autocmd FileType python,yaml BracelessEnable +indent +fold +highlight-cc2
