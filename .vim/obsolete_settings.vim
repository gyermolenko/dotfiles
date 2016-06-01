" ======================================================
" === vundles ===
" ======================================================
" ======================================================

""" Plugin 'goldfeld/vim-seek'
""" Plugin 'svermeulen/vim-extended-ft'
""" Plugin 'dahu/vim-fanfingtastic'
""" Plugin 'chrisbra/improvedft'

" Plugin 'xolox/vim-misc'
" Plugin 'xolox/vim-session'
" Plugin 'xolox/vim-easytags'

""" Plugin 'vim-scripts/YankRing.vim'

" Plugin 'vim-scripts/dbext.vim'
" Plugin 'shmup/vim-sql-syntax'

" Plugin 'krisajenkins/vim-postgresql-syntax'

" Plugin 'rhysd/clever-f.vim'
" Plugin 'rhysd/clever-f.vim/tree/dev'

" Plugin 'terryma/vim-smooth-scroll'
" Plugin 'Raimondi/delimitMate'

" Plugin 'nathanaelkane/vim-indent-guides.git'


" ======================================================
" === .vimrc ===
" ======================================================
" ======================================================

" obsolete since unimpaired plugin - 'cor'
" ======== Relative-absolute numbers toggler ==========
let g:relativemode = 1

" NumberToggle toggles between relative and absolute line numbers
function! NumberToggle()
  if(g:relativemode == 1)
    set norelativenumber
    let g:relativemode = 0
  else
    set relativenumber
    let g:relativemode = 1
  endif
endfunc

nnoremap <leader>R :call NumberToggle()<cr>
" ===== end of Relative-absolute numbers toggler =========


" obsolete since unimpaired plugin - 'coh'
" highlight toggle
nnoremap <F6> :set hlsearch! hlsearch?<CR>


" obsolete since unimpaired plugin - same ]/[+space
" nnoremap ]<space> :set paste<CR>m`o<Esc>``:set nopaste<CR>
" nnoremap [<space> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" obsolete since unimpaired plugin - 'cow'
" Wrap
nnoremap <leader>W :set wrap!<cr>



" Mappings to move lines
" try unimpaired {count}[e
nnoremap <End> :m .+1<CR>==
nnoremap <Home> :m .-2<CR>==
inoremap <End> <Esc>:m .+1<CR>==gi
inoremap <Home> <Esc>:m .-2<CR>==gi
vnoremap <End> :m '>+1<CR>gv=gv
vnoremap <Home> :m '<-2<CR>gv=gv


" === remap <cr> back to 'execute' in command-line window (q:, q/, etc) ===
augroup commandlinewindow
  autocmd!
  autocmd CmdwinEnter * nnoremap <buffer> <CR> <CR>
augroup END

" autocmd CmdwinEnter * nnoremap <CR> <CR>
autocmd BufReadPost quickfix nnoremap <buffer> <CR> <CR>
" ===========================================


" ======================================================
" === plugins settings ===
" ======================================================
" ======================================================

" -- CtrlSpaceGoDown --
" next-prev buffer, like :bn/bp
" tab remapping mangles <c-i> jumplist mapping
" nnoremap <silent> <Tab> :CtrlSpaceGoDown<CR>
" nnoremap <silent> <S-Tab> :CtrlSpaceGoUp<CR>

" --clever-f ---
" nmap ) <Plug>(clever-f-repeat-forward)
" vmap ) <Plug>(clever-f-repeat-forward)
" nmap ( <Plug>(clever-f-repeat-back)
" vmap ( <Plug>(clever-f-repeat-back)



" === xolox/vim-session ===
let g:session_directory = "~/.vim/sessions"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1

" nnoremap <leader>so :OpenSession
" nnoremap <leader>ss :SaveSession
" nnoremap <leader>sd :DeleteSession<CR>
" nnoremap <leader>sc :CloseSession<CR>


" === Easytags ===
" let g:easytags_file = '~/.vim/tags'
let g:easytags_auto_highlight = 0
let g:easytags_python_enabled = 1

" === Clever-F ===
" let g:clever_f_across_no_line = 1
" let g:clever_f_show_prompt = 1
" let g:clever_f_mark_cursor = 1
" let g:clever_f_mark_cursor_color = "Cursor"
" let g:clever_f_chars_match_any_signs = ';'
" let g:clever_f_smart_case = 1
" let g:clever_f_timeout_ms = 50
" let g:clever_f_mark_char = 1
" let g:clever_f_mark_char_color = "clever_f"
" highlight clever_f ctermfg=39 ctermbg=NONE cterm=bold,underline guifg=black guibg=lightgreen
" let g:clever_f_any_signs_match_signs = "!@#$%^;:&+*|"

" worked fine until i opened q/ and q (command-line window)
" after that i've added aucmd for <cr> remapping there
" nmap <cr> <Plug>(clever-f-repeat-forward)
" vmap <cr> <Plug>(clever-f-repeat-forward)
" nmap ; <Plug>(clever-f-repeat-forward)
" vmap ; <Plug>(clever-f-repeat-forward)

" nmap - <Plug>(clever-f-repeat-back)
" vmap - <Plug>(clever-f-repeat-back)
" nmap \ <Plug>(clever-f-repeat-back)
" vmap \ <Plug>(clever-f-repeat-back)

" === end of clever-f mappings ================


" === Smooth scroll ===
" noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
" noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
" noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
" noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>


" === Delimitmate ===
" let g:delimitMate_expand_cr = 1
" let g:delimitMate_expand_space = 1
" let g:delimitMate_smart_quotes = '\%(\w\|[^[:punct:][:space:]]\|\%(\\\\\)*\\\)\%#\|\%#\%(\w\|[^[:space:][:punct:]]\)'
""" let g:delimitMate_smart_quotes = '\%(\w\|[^[:punct:][:space:]]\|\%(\\\\\)*\\\)\%#\|\%#\%(\W\|[^[:space:][:punct:]]\)'

" let delimitMate_smart_matchpairs = '^\%(\w\|\!\|[£$]\|[^[:space:][:punct:]]\)'
" let g:delimitMate_smart_matchpairs = '^\%(\w\|\!\|\W\|[^[:space:][:punct:]]\)'


" === Indent Guides ===
" nnoremap <leader>ig
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=237


" === CtrlP ===
" let g:ctrlp_cmd = 'call CallCtrlP()'

" func! CallCtrlP()
"     if exists('s:called_ctrlp')
"         CtrlPLastMode
"     else
"         let s:called_ctrlp = 1
"         CtrlPMRU
"     endif
" endfunc
