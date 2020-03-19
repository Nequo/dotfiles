if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')
    "Colorschemes 
    Plug 'romainl/Apprentice' 
    Plug 'arzg/vim-substrata'
    Plug 'joshdick/onedark.vim'
    Plug 'arzg/vim-colors-xcode'
    Plug 'arcticicestudio/nord-vim'
    Plug 'ntk148v/vim-horizon'
    "Utilities
    Plug 'scrooloose/nerdtree'
    Plug 'mhinz/vim-startify'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'liuchengxu/vista.vim'
    "Git
    Plug 'tpope/vim-fugitive'
    Plug 'airblade/vim-gitgutter'
    "Latex
    Plug 'lervag/vimtex'
    "Python
    Plug 'nvie/vim-flake8'
    Plug 'norcalli/nvim-colorizer.lua'
    "Rust
    Plug 'rust-lang/rust.vim'
    "LSP
    Plug 'autozimu/LanguageClient-neovim', {
        \ 'branch': 'next',
        \ 'do': 'bash install.sh',
        \ }
    "Plug 'dense-analysis/ale'
    "Completion
    Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'
    Plug 'Shougo/echodoc.vim'
    "Fuzzy finder
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    "Pretty icons - just fluff (Load last)
    Plug 'ryanoasis/vim-devicons'
call plug#end()

set termguicolors
colo nord


"-------------------
"| Plugin Config   |
"-------------------
lua require'colorizer'.setup()

" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'python': ['pyls'],
    \ }
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
"Don't show inline errors
let g:LanguageClient_useVirtualText="No"
"Rust-vim
let g:rustfmt_autosave = 1
"Use Language-client-neovim for vista
let g:vista_default_executive = 'lcn'
"Add vimtex completion to ncm2
autocmd User Ncm2Plugin call ncm2#register_source({
        \ 'name': 'vimtex',
        \ 'priority': 9,
        \ 'subscope_enable': 1,
        \ 'complete_length': 1,
        \ 'scope': ['tex'],
        \ 'mark': 'tex',
        \ 'word_pattern': '\w+',
        \ 'complete_pattern': g:vimtex#re#ncm,
        \ 'on_complete': ['ncm2#on_complete#omni', 'vimtex#complete#omnifunc'],
        \ })
" enable ncm2 for all buffers
autocmd BufEnter * call ncm2#enable_for_buffer()
" IMPORTANT: :help Ncm2PopupOpen for more information
set completeopt=noinsert,menuone,noselect
" Use <TAB> to select the popup menu:
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

let g:markdown_fenced_languages = ['html', 'python', 'bash=sh', 'rust']

set noshowmode
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'signature'

let g:gitgutter_sign_removed = '✗'
let g:gitgutter_sign_added = '✓'
"-------------------
"| Spaces and Tabs |
"-------------------
set tabstop=4                       " number of visual spaces per TAB
set softtabstop=4                   " number of spaces in tab when editing
set expandtab                       " tabs are spaces
set autoindent                      " always turn on indentation
set breakindent                     " Wrap lines at same indent level
set shiftwidth=4                    " Spaces to use for autoindenting
set backspace=indent,eol,start      " proper backspace behavior

"----------------
"|  UI Config   |
"----------------
set number
set relativenumber                  " show line numbers relative to cursor
set showcmd                         " show command in bottom bar
set cursorline                      " highlight current line
filetype indent on                  " load filetype-specific indent files
set wildmenu                        " visual autocomplete for command menu
set wildmode=longest,full           " Enable file autocomplete in command mode
set lazyredraw                      " redraw only when we need to.
set showmatch                       " highlight matching [{()}]
set scrolloff=15                    " always leave 15 spaces when scrolling
set linebreak                       " don't wrap words
set timeoutlen=300 ttimeoutlen=10   " Eliminate delay when changing mode
let $VTE_VERSION="100"              " Trying to fix weird bug
set splitbelow                      " horizontal split opens below
set splitright                      " Vertical split opens to the right
set incsearch                       " search as characters are entered
set hlsearch                        " highlight matches
set signcolumn=yes                  " Always show the sign column


"------------------
"|   StatusLine   |
"------------------
" Enable statusline
set laststatus=2

function! GitBranch()
    if !exists("g:loaded_fugitive") || !exists("b:git_dir")
        return ""
    else
        return "  " . fugitive#head() . " "
    endif
endfunction

hi User1 guifg=#2e3440 guibg=#81a1c1
hi User2 guifg=#81a1c1 guibg=#4c566a
hi User3 guifg=#88c0d0 guibg=#4c566a
hi User4 guibg=#88c0d0 guifg=#4c566a
hi User5 guifg=#2e3440 guibg=#88c0d0
hi User6 guifg=#88c0d0 guibg=#81a1c1

set statusline=
function! ActiveStatusLine ()
    setlocal statusline=
    setlocal statusline+=%#User1#                " Change color
    setlocal statusline+=\ %{WebDevIconsGetFileTypeSymbol()}
    setlocal statusline+=\ %t\ %(%m%)                 " File tail and modified flag
    setlocal statusline+=%#User2#                " Change color
    setlocal statusline+=\  
    setlocal statusline+=%#User3#                " Change color
    setlocal statusline+=%{GitBranch()}
    setlocal statusline+=%#StatusLine#                        " Change color
    setlocal statusline+=%=                              " Adds the middle padding
    setlocal statusline+=%#User4#                " Change color
    setlocal statusline+=\  
    setlocal statusline+=%#User5#
    setlocal statusline+=\ %Y\ 
    setlocal statusline+=%#User6#
    setlocal statusline+=\  
    setlocal statusline+=%#User1#
    setlocal statusline+=\ \ %l:%c\ 
endfunction

function! InactiveStatusLine ()
    setlocal statusline=
    setlocal statusline+=%#StatuslineNC#                " Change color
    setlocal statusline+=\ %{WebDevIconsGetFileTypeSymbol()}
    setlocal statusline+=\ %t\ %(%m%)                 " File tail and modified flag
    setlocal statusline+=%{GitBranch()}
    setlocal statusline+=%=                              " Adds the middle padding
    setlocal statusline+=\ %Y\ 
    setlocal statusline+=\ \ %l:%c\ 
endfunction

augroup statusline
  autocmd!
  autocmd BufEnter * call ActiveStatusLine()
  autocmd WinEnter * call ActiveStatusLine()
  autocmd BufLeave * call InactiveStatusLine()
  autocmd WinLeave * call InactiveStatusLine()
augroup END

call ActiveStatusLine()

"F10 shows highlight group of word under cursor
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

map <F3> :Vista<CR>

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Remember position in file
au BufReadPost * if line("'\"") > 0 && line ("'\"") <= line("$") | exe "normal! g'\"" | endif
nnoremap j gj
nnoremap k gk
