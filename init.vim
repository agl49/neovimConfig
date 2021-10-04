"Plugins
call plug#begin('~/.config/nvim/plugged')

  "File navigation
  	Plug 'scrooloose/nerdTree'
  	nmap <C-n> :NERDTreeToggle<CR>

  "Info display
  Plug 'bling/vim-airline'

  "Themes
  "Plug 'morhetz/gruvbox'
  Plug 'fcpg/vim-orbital'
  " Plug 'jaredgorski/spacecamp'
  " Plug 'fcpg/vim-fahrenheit'

  "Editing functionality
  " Plug 'reedes/vim-pencil' 
  "https://github.com/reedes/vim-pencil

  "Snippets
  "Plug 'SirVer/ultisnips',
  "Plug 'honza/vim-snippets',

  "Comment plug 
  Plug 'tpope/vim-commentary'

  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'

  " FZF plugins 
  " Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  " Plug 'neoclide/coc.nvim', { 'branch': 'release' }  
  " Plug 'junegunn/fzf.vim'
  Plug 'airblade/vim-rooter'

  " git plugin
  " Plug 'airblade/vim-gitgutter'

  "To refactor names
  " Plug 'brooth/far.vim'

  "Markdown
  " Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
  

call plug#end()

"config files for plugins


" Pluggins from old setup
" source $HOME/.config/nvim/plug-config/coc.vim
" source $HOME/.config/nvim/plug-config/coc-extensions.vim
" source $HOME/.config/nvim/plug-config/fzf.vim
" source $HOME/.config/nvim/plug-config/vim-rooter.vim
" source $HOME/.config/nvim/plug-config/gitgutter.vim
" source $HOME/.config/nvim/plug-config/far.vim
" source $HOME/.config/nvim/plug-config/markdownPreview.vim

"Theme Config
set termguicolors

colorscheme orbital

"Neovim config

syntax enable              " Enables syntax highlighing
set number                 "line numbers
set history=1000           "store :cmd history
set hlsearch               "highlight searching result
set ignorecase             "ingnore case while searching
set showmatch              "highlight matched bracket ()
set nowrap                 "Turns off line wrap
set mouse=a                "Allows for mouse movement in all modes
set clipboard=unnamedplus  " Copy paste between vim and everything else
set expandtab              " Converts tabs to spaces
set smartindent            " Makes indenting smart
set autoindent             " Good auto indent
set formatoptions-=cro     " Stop newline continution of comments
set spelllang=en           "Turns on Spell check
set spell
set noshowmode             " We don't need to see things like -- INSERT -- anymore
set t_Co=256               " Support 256 colors
set updatetime=300         " Faster completion
set hidden                 " Required to keep multiple buffers open multiple buffers
set showtabline=2          " Always show tabs
set tabstop=4              " Insert 4 spaces for a tab
set shiftwidth=2           " Change the number of space characters inserted for indentation
set nocompatible           " For vim-polygot

"following setting are for coc plugin

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
set signcolumn=yes


" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif

