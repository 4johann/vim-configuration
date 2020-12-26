" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Enable color
syntax on

" set bs=2	" Enable Backspace buttom
set ts=2 sw=2 et
set number
set encoding=utf8
set nocompatible              " be iMproved, required
set background=dark
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
" set rtp+=/usr/local/opt/fzf " If installed using Homebrew
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'             " Plugin manager
Plugin 'scrooloose/nerdtree.git'          " File manager
Plugin 'kien/ctrlp.vim'                   " Finder
Plugin 'vim-airline/vim-airline'          " Themes
Plugin 'vim-airline/vim-airline-themes'   " Themes
Plugin 'ryanoasis/vim-devicons'           " Add icons
Plugin 'valloric/youcompleteme'           " Autocomplete (C/C++/Objective-C/Objective-C++/CUDA)
Plugin 'airblade/vim-gitgutter.git'       " Git
Plugin 'tpope/vim-fugitive'               " Git
Plugin 'xuyuanp/nerdtree-git-plugin'      " Git for NERDTree
Plugin 'nathanaelkane/vim-indent-guides'  " Indent
Plugin 'ekalinin/dockerfile.vim'          " Dockerfile
Plugin 'jparise/vim-graphql'              " GraphQL
Plugin 'fatih/vim-go'                     " Go
Plugin 'pangloss/vim-javascript'          " Javascript
Plugin 'elzr/vim-json'                    " JSON
Plugin 'hallison/vim-markdown'            " Markdown
Plugin 'derekwyatt/vim-scala'             " Scala
Plugin 'lervag/vimtex'                    " TeX
Plugin 'cespare/vim-toml'                 " TOML
Plugin 'leafgarland/typescript-vim'       " Typescript
Plugin 'dense-analysis/ale'               " Asynchronous Lint Engine
Plugin 'gko/vim-coloresque'               " Hexadecimal color
Plugin 'SirVer/ultisnips'                 " Snippets
Plugin 'junegunn/fzf.vim'                 " FZF
Plugin 'neoclide/coc.nvim'                " 

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Indent
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

" youcompleteme
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_language_server = [{'name': 'rust', 'cmdline': ['rust-analyzer'], 'filetypes': ['rust'], 'project_root_files': ['Cargo.toml']}, {'name': 'go', 'cmdline': 'gopls', 'filetypes': 'go'}]

" Ultisnips
let g:UltiSnipsExpandTrigger="<c-a>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"

" ALE
let b:ale_fixers = {'javascript': ['prettier', 'eslint']}
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1
let g:ale_completion_tsserver_autoimport = 1
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" gitgutter
let g:gitgutter_enabled = 1
let g:gitgutter_signs = 1
let g:gitgutter_signs = 1

" NERDTree
" let g:NERDTreeNodeDelimiter = "\u00a0"	" Only MacOs
map <C-n> :NERDTreeToggle<CR>

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_user_command = 'find %s -type f'
set wildignore+=*/tmp/*,*/node_modules/*,*/bower_components/*,*.so,*.swp,*.zip

" SCALA
let g:scala_scaladoc_indent = 1

" LaTeX
let g:tex_flavor = 'latex'

" FZF
let g:fzf_layout = { 'down': '~30%'}

" ALE
let g:ale_linters = {'rust': ['analyzer']}
