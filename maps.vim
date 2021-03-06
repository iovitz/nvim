" ------------------------------
" Name: 按键
" Author: iovitz
" ------------------------------


" leader成空格
let mapleader=","

" Reflash
nnoremap <leader>r :source $MYVIMRC<cr>

" Ctrl d
nnoremap <c-d> yyp

" clt j
nnoremap <a-j> ddp
nnoremap <a-k> ddkkp

" Esc
inoremap Capslock <Esc>

" Save
noremap <silent> <C-S>          :update<CR>
vnoremap <silent> <C-S>         <C-C>:update<CR>
inoremap <silent> <C-S>         <C-O>:update<CR>

" Run code
map <F1> :call CompileRunGcc()<CR>
func! CompileRunGcc()
    exec "w"    
    if &filetype == 'typescriptreact'
        exec '!node %'
    elseif &filetype == 'typescript'
        exec '!ts-node %'
    elseif &filetype == 'go'
        exec '!go run %'
    elseif &filetype == 'java'
        exec '!javac %'
        exec '!java %<'
    elseif &filetype == 'python'
        exec "!python %"
    elseif &filetype == 'markdown'
        :MarkdownPreview
    endif
endfunc