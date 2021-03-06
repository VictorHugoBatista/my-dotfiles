" --------------------------------------------------
" PLUGINS INSTALADOS (VIM-PLUG)
" --------------------------------------------------

" Comandos disponíveis (https://github.com/junegunn/vim-plug)
"  - :PlugInstall - Instala plugins listados abaixo
"  - :PlugUpdate - Atualiza os plugins listados abaixo
"  - :PlugUpgrade - Atualiza o vim-plug
call plug#begin('~/.vim/plugged')
" Estilos
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'
Plug 'miyakogi/conoline.vim'
Plug 'Yggdroot/indentLine'

" Comandos e atalhos
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-unimpaired'

" Versionador
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Misc
Plug 'mhinz/vim-startify'
Plug 'editorconfig/editorconfig-vim'
call plug#end()

filetype plugin indent on

" --------------------------------------------------
" CONFIGURAÇÕES DE PLUGINS
" --------------------------------------------------

" Tema do airline
let g:airline_theme='cool'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Configurações de busca do CTRL+P
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = '\v[\/](\.idea|\.git|vendor|node_modules|bower_components|dist)$'

colorscheme materialtheme

" --------------------------------------------------
" CONFIGURAÇÕES GERAIS
" --------------------------------------------------

syntax on " Ativa o syntax highlighting.

" Configurações gerais do Vim
set number " Exibe o número da linha atual, em conjunto com a linha abaixo.
set relativenumber " Exibe números relativos à posição atual do buffer.
set nowrap " Remove as quebras de linha no fim da tela.
set noshowmode " Esconde a barra de status padrão.
set hidden " Torna a troca entre buffers automática com arquivos não salvos.
set t_Co=256 " Ativa as cores exibidas nos temas.

" Configurações de espaços
set smartindent " Mantém a mesma identação que a linha anterior
set expandtab " Troca o tab or espaços
set tabstop=4 " Tab equivale a 4 espaços
set shiftwidth=4 " Operações como identação usando o >> também com 4 espaços
set softtabstop=4 " Operações como o backspace também com 4 espaços
set list listchars=tab:→\ ,trail:· " Exibe o caractere tab para o caso de alguém cometer o sacrilégio de misturar espaços com tabs<Paste>

" --------------------------------------------------
" MAPEAMENTOS DE TECLAS
" --------------------------------------------------

" Remove as teclas de setas
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Adiciona os comandos C-j e C-k para mover linhas pelo arquivo.
nmap <C-K> [e
nmap <C-J> ]e
vmap <C-K> [egv
vmap <C-J> ]egv

" Mapeia as teclas Tab e Shift-Tab para trocar tabs por quatro espaços.
nmap <Tab> :%s/\t/    /g<Enter>
nmap <S-Tab> :%s/    /\t/g<Enter>
