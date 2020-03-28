
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

let g:vista_ctags_cmd = {
      \ 'haskell': 'hasktags -x -o - -c',
      \ }
let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]
"let g:vista_default_executive = 'ctags'
let g:vista#renderer#enable_icon = 1
let g:vista#renderer#icons = {
\   "function": "\uf794",
\   "variable": "\uf71b",
\  }


" if HasPlug('coc.nvim')
"     nnoremap <M-t> <esc>:Vista finder coc<CR>
" else
"     nnoremap <M-t> :Vista finder<CR>
" endif

nnoremap <F3> :Vista!!<CR>