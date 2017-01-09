set nocompatible              " be iMproved, required
filetype plugin indent on                 " required
syntax on
set laststatus=2
set ruler
set ignorecase
set noswapfile

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/dbext.vim'
Plugin 'soramugi/auto-ctags.vim'
Plugin 'alvan/vim-assistant'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'Shougo/neocomplete.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'jaxbot/semantic-highlight.vim'
Plugin 'nathanaelkane/vim-indent-guides'
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
color 256-grayvim
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let macvim_skip_colorscheme = 1

"NERDTree button

map § :NERDTreeToggle<CR>


"Create newlines without entering insert mode
nmap <S-Enter> O<Esc>j
nmap <CR> o<Esc>k

"Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2"

"reload vimrc f5
map <F5> :source ~/.vimrc

" Run c files inline
map <C-Enter> :!gcc % -o runc && ./runc 
 
"variable syntax higlighting
:nnoremap <Leader>s :SemanticHighlightToggle<cr>

"Unhighlight search with //
nnoremap // :set hlsearch!<CR>

"Map leader keys
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
noremap <Leader>q :q<CR>
noremap <Leader>x :x<CR>
noremap <leader>a $
nnoremap <silent> <Leader>b :TagbarToggle<CR>
nnoremap <leader>. :CtrlPTag<cr>
" Copy and paste to clipboard with <space>p <space>y
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P


" Smart way to move between windows
map <C-j> <C-W>j
map <C-i> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
" Smart way to move between windows
map <Leader>j <C-W>j
map <Leader>k <C-W>k
map <Leader>h <C-W>h
map <Leader>l <C-W>l


map <F1> :NERDTree<CR>
let macvim_skip_colorscheme = 1
"Autoclose brackets
iabbrev </ </<C-X><C-O>


"if &term =~ "xterm\\|rxvt"
  " use an orange cursor in insert mode
  let &t_SI = "\<Esc>]12;green\x7"
  " use a red cursor otherwise
  let &t_EI = "\<Esc>]12;white\x7"
  silent !echo -ne "\033]12;white\007"
  " reset cursor when vim exits
  autocmd VimLeave * silent !echo -ne "\033]112\007"
  " use \003]12;gray\007 for gnome-terminal
"endif

" Cursor shapes
  let &t_SI .= "\<Esc>[5 q"
  let &t_EI .= "\<Esc>[1 q"
  
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
let NERDTreeIgnore=['\.pyc$', '\.o$', '\~$']
let g:auto_ctags = 1


"map <Leader>v :w <CR> :!gcc -o buildc % && ./buildc <CR>

"Leader ][ to change the buffer
map <leader>] :bnext<CR>
map <leader>[ :bprev<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set cursorline
set mouse=a
set hlsearch 

"Stop that annoying window
map q: :q

"Allow easy switching between buffers
:set hidden
:set backspace=2

