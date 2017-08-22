set nocompatible              " be iMproved, required
set number

set laststatus=2
set ruler
set ignorecase
set noswapfile

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'sophacles/vim-bundle-mako'
Plugin 'saltstack/salt-vim'
Plugin 'vim-scripts/mru.vim'
Plugin 'vim-scripts/dbext.vim'
Plugin 'spacewander/openresty-vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'neovimhaskell/haskell-vim'
Plugin 'soramugi/auto-ctags.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'alvan/vim-assistant'
Plugin 'scrooloose/syntastic'
Plugin 'ervandew/supertab'
Plugin 'scrooloose/nerdcommenter'
Plugin 'junegunn/fzf'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/LustyExplorer'
Plugin 'Shougo/neocomplete.vim'
Plugin 'mileszs/ack.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'valloric/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive'
Plugin 'qpkorr/vim-bufkill'
Plugin 'scrooloose/nerdtree'
Bundle 'bling/vim-airline'
Plugin 'jaxbot/semantic-highlight.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'eagletmt/ghcmod-vim'
Plugin 'eagletmt/neco-ghc'
Plugin 'airblade/vim-gitgutter'
call vundle#end()            " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"color 256-grayvim
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0
let macvim_skip_colorscheme = 1

"NERDTree button

map § :NERDTreeToggle<CR>
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`
let g:haskell_backpack = 1                " to enable highlighting of backpack keywords





filetype plugin indent on                 " required
syntax on

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
nnoremap <leader>. :FZF<cr>
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
map <F2> :NERDTreeFind<CR>
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

" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"Show line endings
set listchars=tab:▸\ ,eol:¬
set list


"map <Leader>v :w <CR> :!gcc -o buildc % && ./buildc <CR>

"Leader ][ to change the buffer
map <leader>] :bnext<CR>
map <leader>[ :bprev<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

set cursorline
set mouse=a
set hlsearch

"Stop that annoying window
map q: :q

"Allow easy switching between buffers
:set hidden
:set backspace=2

"keep matches in the centre of the screen
noremap n nzzzv
noremap N Nzzzv


"setup GHC completeion
map <silent> tw :GhcModTypeInsert<CR>
map <silent> ts :GhcModSplitFunCase<CR>
map <silent> tq :GhcModType<CR>
map <silent> te :GhcModTypeClear<CR>

" Ack stuff for searching 
let g:ackprg = 'ag --vimgrep'
cnoreabbrev Ack Ack!
nnoremap <Leader>a :Ack!<Space>

" LustyExplorer bindings
noremap <Leader>/ :LustyBufferGrep<CR>
noremap <Leader>o :LustyFilesystemExplorer<CR>
noremap <Leader>, :LustyBufferExplorer<CR>
