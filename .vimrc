"------------- vundle configuration -------------------"
set nocompatible              " be iMproved, required

so ~/.vim/plugins-vinegar.vim

syntax enable

colorscheme desert

set backspace=indent,eol,start

set number

"set leader to , instead of \
let mapleader = ','


"------------- Setting color specific config -------------------"

colorscheme atom-dark-256

set t_CO=256



"------------- Split Mgt-------------------"
" not defined yet


"------------- Search -------------------"

" set hilight to the search pattern
" (to remove highlighting an auto-command is introduced below)
set hlsearch

" set incremental search
set incsearch



"------------- Mappings -------------------"

" open .vimrc in a different tab
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" remove hilighting
nmap <Leader><space> :nohlsearch<cr>

" nerd tree toggle
nmap <Leader>nt :NERDTreeToggle<cr>

"------------- Auto-commands ----------------"

" automatically source .vimrc on write
augroup autosourcing
	" clear out current group
	autocmd!
	" and add the autocommand to the group
	autocmd BufWritePost .vimrc source %
augroup END


"------------- Plugin configs ---------------------"

"------------- Nerdtree configs -------------------"

let NERDTreeDirArrowExpandable = "+"
let NERDTreeDirArrowCollapsible = "~"
let NERDTreeHijackNetrw = 0

"------------ CtrlP configs -----------------------"

nmap <c-R> :CtrlPBufTag<cr>
nmap <c-M> :CtrlPMRUFiles<cr>
