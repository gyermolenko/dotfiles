" be iMproved, required
set nocompatible
" required
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" ================= Plugins ==========================================

"" Vim python-mode. PyLint, Rope, Pydoc, breakpoints from box
Plugin 'klen/python-mode'

"""" Autocompletion
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'

"" status-tabline
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
"" pack, includes molokai, which worked with the terminal
Plugin 'flazz/vim-colorschemes'

"""" Additional objects
"" replace with 'griw' instead of 'viwp' and repeatable on dot, etc
Plugin 'vim-scripts/ReplaceWithRegister'

"""" Files navigation
Plugin 'scrooloose/nerdtree'
" Plugin 'kien/ctrlp.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'szw/vim-ctrlspace'
Plugin 'mileszs/ack.vim'
Plugin 'rking/ag.vim'

"""" Buffer navigation
Plugin 'easymotion/vim-easymotion'
" TODO: FIX conflict with vim-asterisk
" Plugin 'henrik/vim-indexed-search'
Plugin 'majutsushi/tagbar'

Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-unimpaired'

"""" HTML
Plugin 'mitsuhiko/vim-jinja'
"" highlight enclosing html tag
Plugin 'Valloric/MatchTagAlways'

Plugin 'michaeljsmith/vim-indent-object'
" Plugin 'Yggdroot/indentLine'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'maxbrunsfeld/vim-yankstack'

" Plugin 'jiangmiao/auto-pairs'
Plugin 'eapache/auto-pairs'

Plugin 'pangloss/vim-javascript'

" required for kana textobjs, e.g. entire and line
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-entire'

Plugin 'exu/pgsql.vim'

" Plugin 'Shougo/unite.vim'
" Plugin 'Shougo/neomru.vim'
" Plugin 'Shougo/vimproc.vim'

Plugin 'rbgrouleff/bclose.vim'

Plugin 'justinmk/vim-sneak'
Plugin 'tommcdo/vim-exchange'

Plugin 'fatih/vim-go'
Plugin 'teranex/jk-jumps.vim'

" library plugin to provide an easy way to define your own operator
Plugin 'kana/vim-operator-user'
" Plugin 'haya14busa/vim-operator-flashy'

" visual marks in gutter
Plugin 'kshenoy/vim-signature'
" open manuals from terminal in vim
Plugin 'jez/vim-superman'

Plugin 'airblade/vim-gitgutter'
Plugin 'haya14busa/vim-asterisk'
Plugin 'mhinz/vim-hugefile'
Plugin 'kana/vim-textobj-line'

" Plugin 'haya14busa/vim-easyoperator-line'
" ====================================================================


" All of your Plugins must be added before the following line
" required
call vundle#end()
" required
filetype plugin indent on
