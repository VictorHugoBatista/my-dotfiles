"Lista dos plugins instalados:
" https://github.com/junegunn/vim-plug
" :PlugInstall
" :PlugUpdate
" :PlugUpgrade
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-startify'
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'Yggdroot/indentLine'
call plug#end()

" Configurações dos plugins do Vim
let g:airline_theme='ravenpower'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
colorscheme materialtheme

syntax on
filetype plugin indent on

" Configurações padrão do Vim
set relativenumber
set nowrap
set noshowmode
set t_Co=256

" Configurações de espaços
set smartindent                     " Mantém a mesma identação que a linha anterior
set expandtab                       " Troca o tab or espaços
set tabstop=4                       " Tab equivale a 4 espaços
set shiftwidth=4                    " Operações como identação usando o >> também com 4 espaços
set softtabstop=4                   " Operações como o backspace também com 4 espaços
set list listchars=tab:→\ ,trail:·  " Exibe o caractere tab para o caso de alguém cometer o sacrilégio de misturar espaços com tabs<Paste>

" Remove as teclas de setas
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

