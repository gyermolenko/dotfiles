" https://github.com/junegunn/vim-plug
" Installation
" curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
"     https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin(g:editor_root . '/plugged')


" ================= Plugins ==========================================

"" Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box
" Plug 'klen/python-mode'
" Plug 'vim-syntastic/syntastic'

"""" Autocompletion
Plug 'davidhalter/jedi-vim'
Plug 'ervandew/supertab'
" Group dependencies, vim-snippets depends on ultisnips
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }

"" status-tabline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"" pack, includes molokai, which worked with the terminal
Plug 'flazz/vim-colorschemes'

"""" Additional objects
"" replace with 'griw' instead of 'viwp' and repeatable on dot, etc
Plug 'vim-scripts/ReplaceWithRegister'

"""" Files navigation
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
" Plug 'kien/ctrlp.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'szw/vim-ctrlspace'
Plug 'mileszs/ack.vim'
" Plug 'rking/ag.vim'

"""" Buffer navigation
" Plug 'easymotion/vim-easymotion'
" TODO: FIX conflict with vim-asterisk
" Plug 'henrik/vim-indexed-search'
" some issues in tracker
" Plug 'majutsushi/tagbar'

Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-unimpaired'

"""" HTML
Plug 'mitsuhiko/vim-jinja'
"" highlight enclosing html tag
Plug 'Valloric/MatchTagAlways'
Plug 'tweekmonster/django-plus.vim'

Plug 'michaeljsmith/vim-indent-object'
" Plug 'Yggdroot/indentLine'
Plug 'terryma/vim-multiple-cursors'
" Plug 'maxbrunsfeld/vim-yankstack'

Plug 'jiangmiao/auto-pairs'
" Plug 'eapache/auto-pairs'

Plug 'pangloss/vim-javascript', { 'for': 'javascript' }

" required for kana textobjs, e.g. entire and line
Plug 'kana/vim-textobj-user'
Plug 'kana/vim-textobj-entire'

" Plug 'exu/pgsql.vim'

Plug 'rbgrouleff/bclose.vim'

Plug 'justinmk/vim-sneak'
Plug 'tommcdo/vim-exchange'

" Plug 'teranex/jk-jumps.vim'


" (dependency) library plugin to provide an easy way to define your own operator
Plug 'kana/vim-operator-user'
" depends on kana/vim-operator-user
" Plug 'haya14busa/vim-operator-flashy'

" gutter marks
Plug 'kshenoy/vim-signature'
" gutter git
Plug 'airblade/vim-gitgutter'
" open manuals from terminal in vim
" Plug 'jez/vim-superman'
Plug 'haya14busa/vim-asterisk'
Plug 'mhinz/vim-hugefile'
Plug 'kana/vim-textobj-line'
Plug 'vim-utils/vim-vertical-move'

" Plug 'haya14busa/vim-easyoperator-line'
" Plug 'lyokha/vim-xkbswitch'

Plug 'ap/vim-css-color', { 'for': 'css' }
Plug 'christoomey/vim-tmux-navigator'

" File-formats / syntax
" Plug 'fatih/vim-go', { 'for': 'go' }
" Plug 'digitaltoad/vim-pug', { 'for': ['jade', 'pug'] }

Plug 'rust-lang/rust.vim'
" ====================================================================


call plug#end()
