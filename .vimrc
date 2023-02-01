" @Author Aan Kurniawan <aan.phpy@gmail.com>
" ===== Basic Config =====
set expandtab
set backspace=indent,eol,start
set smartindent
set syntax=on
set nowrap
set tabstop=4
set shiftwidth=4
set nocindent
set number

colorscheme industry

" ===== Plugins =====
"
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
    Plugin 'VundleVim/Vundle.vim'
    "Plugin 'scrooloose/nerdtree'
    Plugin 'preservim/nerdtree'
    Plugin 'ycm-core/YouCompleteMe'
    Plugin 'nelsyeung/twig.vim'
call vundle#end()
filetype plugin indent on

"===== Config =====

"NERDTree
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
function ToggleNERDTreeCmd()
    if g:NERDTree.IsOpen()
        :NERDTreeClose
    else
        :NERDTree
    endif
endfunction
nmap <C-\> :call ToggleNERDTreeCmd()<CR>

"YouCompleteMe
nnoremap <silent> <localheader>h <Plug>(YCMToggleInlayHints)
