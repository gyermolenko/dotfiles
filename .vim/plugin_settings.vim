" ========== Plugin settings =========
" === Python-mode
" Don't autofold code
let g:pymode_folding = 0
" Get possibility to run Python code
let g:pymode_run = 1
let g:pymode_run_bind = '<leader>rs'
" Disabled because using Jedi
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0

let g:pymode_doc = 0
let g:pymode_doc_key = '<F6>'

let g:pymode_syntax = 1
let g:pymode_syntax_all = 0
let g:pymode_syntax_indent_errors = 1
let g:pymode_syntax_space_errors = 0
let g:pymode_trim_whitespaces = 0
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_highlight_equal_operator = 0
let g:pymode_syntax_builtin_types = 0

" let python_highlight_all=0
" let python_highlight_exceptions=0
" let python_highlight_builtins=0

" Turn on code checking
let g:pymode_lint = 1
"let g:pymode_lint_signs = 0
" let g:pymode_lint_checkers="pyflakes,pep8"
" let g:pymode_lint_ignore="E1116,E127,E128,E261,E302,E303,E501,E502,E711,E712,W0404,W391,W601,W0611,C0110"
let g:pymode_lint_ignore="W0611,W0612"
" W0611: Unused import %s
" W0612: Unused variable %r
" let g:pymode_lint_ignore="E501,W601,C0110"
" Check code on every save (if file has been modified)
let g:pymode_lint_on_write = 0
let g:pymode_lint_unmodified = 0
nnoremap <F9> :PymodeLint<CR>
" let g:pymode_lint_write = 1
let g:pymode_virtualenv = 1
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>B'


" === Jedi
let g:jedi#popup_on_dot = 0
let g:jedi#completions_command = "<C-Space>"
" let g:jedi#completions_command = "<tab>"
" Disable choose first function/method at autocomplete
let g:jedi#popup_select_first = 0
"let g:jedi#use_tabs_not_buffers = 1                 " use tabs when going to a definition
" let g:jedi#goto_command = "<leader>d"
let g:jedi#goto_command = "<F10>"
let g:jedi#goto_assignments_command = "<F11>"
" let g:jedi#goto_definitions_command = "<F12>"
let g:jedi#goto_definitions_command = "<leader>gg"
let g:jedi#documentation_command = "<F6>"
" let g:jedi#usages_command = "<leader>n"
let g:jedi#usages_command = "<F12>"
" let g:jedi#rename_command = "<leader>r"
let g:jedi#rename_command = ""
let g:jedi#show_call_signatures = 2
" highlight Pmenu ctermbg=57 ctermfg=3
" highlight Pmenu ctermbg=4 ctermfg=11
highlight Pmenu ctermbg=19 ctermfg=11
" highlight clever_f ctermfg=39 ctermbg=NONE cterm=bold,underline guifg=black guibg=lightgreen


" === Airline
" let g:airline_theme='luna'
let g:airline_theme='badwolf'
let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 0
" let g:airline#extensions#tabline#show_close_button = 0
" let g:airline#extensions#tabline#formatter = 'default'
" let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
" let g:airline#extensions#tabline#show_buffers = 1
" let g:airline#extensions#tabline#fnamemod = ':t'
" let g:airline#extensions#tabline#fnamecollapse=0
" let g:airline#extensions#tabline#fnametruncate=0
" let g:airline#extensions#tabline#tab_nr_type = 0
" let g:airline#extensions#tabline#buffer_idx_mode = 1
" let g:airline#extensions#tabline#show_tab_type = 1
let g:airline_section_z = ""
" let g:airline_section_y="%y"
let g:airline_section_y = ""
let g:airline_section_warning = ""
let g:airline_mode_map = {
      \ '__' : '-',
      \ 'n'  : 'N',
      \ 'i'  : 'I',
      \ 'R'  : 'R',
      \ 'c'  : 'C',
      \ 'v'  : 'V',
      \ 'V'  : 'VL',
      \ '' : 'VB',
      \ 's'  : 'S',
      \ 'S'  : 'S',
      \ '' : 'S',
      \ }



" === CtrlP ===
let g:ctrlp_map = '<localleader>.'
" nnoremap <localleader>. :CtrlP<CR>
nnoremap <localleader>, :CtrlPMRU<CR>
let g:ctrlp_working_path_mode = 'rw'
" nnoremap <localleader>b :CtrlPBuffer<CR>
nnoremap <leader>, :CtrlPBuffer<CR>
" wo these settings Buffer mode search was like name-path
let g:ctrlp_bufname_mod = ':~:.:p'
" let g:ctrlp_bufname_mod = ':t'
let g:ctrlp_bufpath_mod = ''
" let g:ctrlp_bufpath_mod = ':~:.:h'

" let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|venv|env|\.env)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
" let g:ctrlp_cmd = 'call CallCtrlP()'

" func! CallCtrlP()
"     if exists('s:called_ctrlp')
"         CtrlPLastMode
"     else
"         let s:called_ctrlp = 1
"         CtrlPMRU
"     endif
" endfunc


" === NerdTree ===
map <F1> :NERDTreeToggle<CR>
let NERDTreeChDirMode = 2
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let NERDTreeShowHidden = 1
let NERDTreeSortHiddenFirst = 1
let NERDTreeMinimalUI = 0
let NERDTreeShowLineNumbers = 1
let NERDTreeWinSize = 36
" i want to use backward search in NTree
let g:NERDTreeMapHelp = '<F2>'
" i want to use Sneak in NTree
let g:NERDTreeMapOpenVSplit = '\s'

" === SuperTab ===
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
autocmd FileType python setlocal omnifunc=jedi#completions
" let g:SuperTabMappingForward = '<tab>'
" let g:SuperTabDefaultCompletionType = 'context'
" let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
" let g:SuperTabDefaultCompletionType = '<c-n>'
" let g:SuperTabLongestHighlight = 1
" let g:SuperTabCrMapping = 0

" === MatchTagAlways ===
let g:mta_use_matchparen_group = 0
let g:mta_set_default_matchtag_color = 0
nnoremap <leader>j :MtaJumpToOtherTag<cr>
vnoremap <leader>j :MtaJumpToOtherTag<cr>
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \ 'htmljinja' : 1,
    \ 'htmldjango' : 1,
    \}


" === UltiSnips ===
let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsExpandTrigger="<c-i>"
let g:UltiSnipsJumpForwardTrigger="<c-f>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"
" g:UltiSnipsExpandTrigger
" g:UltiSnipsJumpForwardTrigger
" g:UltiSnipsJumpBackwardTrigger


" === IndexedSearch ===
let g:indexed_search_mappings = 1
let g:indexed_search_colors = 0
" If 1, the mappings for * and # stay on the word under the cursor.  Basically, *N (or #N).
let g:indexed_search_dont_move = 0
let g:indexed_search_shortmess = 1
let g:indexed_search_numbered_only = 1
" let g:indexed_search_center = 1
" autocmd VimEnter * nmap n <Plug>(indexed-search-n)zz
" autocmd VimEnter * nmap N <Plug>(indexed-search-N)zz


" === Commentary ===
nnoremap <leader>gc i  # <esc>3h
nmap <leader>c gcc


" === CtrlSpace ===
let g:CtrlSpaceDefaultMappingKey = "<C-Space>"
" let g:CtrlSpaceDefaultMappingKey = "q"
let g:CtrlSpaceSaveWorkspaceOnExit = 0
let g:CtrlSpaceLoadLastWorkspaceOnStart = 0
let g:CtrlSpaceUseTabline = 1
nnoremap <leader>ss :CtrlSpaceSaveWorkspace workspace_1<CR>
nnoremap <leader>so :CtrlSpaceLoadWorkspace workspace_1<CR>
nnoremap <leader>sp :CtrlSpaceLoadWorkspace add_provider<CR>
" let g:CtrlSpaceKeys = { "Buffer": { "a": <cr> } }vO
let g:CtrlSpaceIgnoredFiles = '\v(tmp|temp|env|.env)[\/]'
" hi CtrlSpaceSearch guifg=#cb4b16 guibg=NONE gui=bold ctermfg=9 ctermbg=NONE term=bold cterm=bold
" hi link CtrlSpaceStatus StatusLine
" hi StatusLine guifg=#cb4b16 guibg=NONE gui=bold ctermfg=3 ctermbg=NONE term=bold cterm=bold
hi CtrlSpaceSelected term=reverse ctermfg=187   guifg=#d7d7af ctermbg=23    guibg=#005f5f cterm=bold gui=bold
hi CtrlSpaceNormal   term=NONE    ctermfg=244   guifg=#808080 ctermbg=232   guibg=#080808 cterm=NONE gui=NONE
hi CtrlSpaceSearch   ctermfg=220  guifg=#ffd700 ctermbg=NONE  guibg=NONE    cterm=bold    gui=bold
hi CtrlSpaceStatus   ctermfg=230  guifg=#ffffd7 ctermbg=234   guibg=#1c1c1c cterm=NONE    gui=NONE
nnoremap <silent> <C-f> :CtrlSpaceGoDown<CR>
nnoremap <silent> <C-b> :CtrlSpaceGoUp<CR>


" === Indent Lines ===
nnoremap <localleader>il :IndentLinesToggle<cr>
nnoremap <localleader>id :LeadingSpaceToggle<cr>
let g:indentLine_enabled = 0
" let g:indentLine_color_term = 239
" let g:indentLine_char = 'c'
" let g:indentLine_char = '.'
let g:indentLine_leadingSpaceEnabled = 0
let g:indentLine_leadingSpaceChar = '·'


" === Tagbar ===
nmap <F8> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0 
let g:tagbar_foldlevel = 0


" === Yankstack ===
let g:yankstack_map_keys = 0
" nmap <F5> <Plug>yankstack_substitute_older_paste
" nmap <F6> <Plug>yankstack_substitute_newer_paste
" wo this line mappings on s/S will be destroyed
let g:yankstack_yank_keys = ['y', 'd', 'D']
nmap <localleader>p <Plug>yankstack_substitute_older_paste
nmap <localleader>n <Plug>yankstack_substitute_newer_paste
vmap <localleader>p <Plug>yankstack_substitute_older_paste
vmap <localleader>n <Plug>yankstack_substitute_newer_paste

" === operator-flashy ===
call yankstack#setup()
map y <Plug>(operator-flashy)


" === Special mappings ===
" nnoremap ; :
" vnoremap ; :
" nnoremap ' :
" vnoremap ' :


" === Sneak ===
" nmap ) <Plug>SneakNext
" nmap ( <Plug>SneakPrevious
" vmap ) <Plug>SneakNext
" vmap ( <Plug>SneakPrevious
" direction
let g:sneak#absolute_dir = 0
" Case sensitivity is determined by 'ignorecase' and 'smartcase'
let g:sneak#use_ic_scs = 1
" hi link SneakPluginTarget ErrorMsg
hi link SneakPluginScope  Comment
" highlight SneakPluginTarget ctermfg=39 ctermbg=NONE cterm=bold,underline guifg=black guibg=lightgreen
" none - MAGENTA
highlight SneakPluginTarget ctermfg=NONE ctermbg=NONE cterm=NONE
" white
highlight SneakPluginTarget ctermfg=15 ctermbg=NONE cterm=NONE
" bright blue and underlined
" highlight SneakPluginTarget ctermfg=39 ctermbg=NONE cterm=bold,underline guifg=black guibg=lightgreen
nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F
nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T
nmap - <Plug>SneakPrevious
xmap - <Plug>SneakPrevious

" === Surround ===
" call yankstack#setup()
nmap Y ysiw
xmap Y <Plug>VSurround


" === ReplaceWithRegister ===
" nmap R gri
nmap K gri
" nmap M gri


" === Unimpaired =============
" nnoremap ]w :set paste<CR>m`o<Esc>:set nopaste<CR>p
" nnoremap [w :set paste<CR>m`O<Esc>:set nopaste<CR>p
" =p is already remapped by unimpaired at this point
" nmap [w =P
" nmap ]w =p
nmap [w [p
nmap ]w ]p

" not directly related to unimpaired. Actions with lines before and after current
nnoremap ]d <down>dd<up>
nnoremap [d <up>dd

nnoremap com :SignatureToggle<cr>

" === CtrlSpace [2] ===
" because of unimpaired ]b
nnoremap <silent> ]r :CtrlSpaceGoDown<CR>
nnoremap <silent> [r :CtrlSpaceGoUp<CR>


" === Ack =========
nnoremap <leader>ac :Ack --ignore-dir={env,.env,feeds/mysql} --ignore-file=ext:js,tags 
nnoremap <leader>Ac :Ack --ignore-file=ext:js 
nnoremap <leader>ag :Ag --ignore-dir={env,.env,feeds/mysql} 
nnoremap <leader>Ag :Ag 


" === Unite ===
let g:unite_data_directory = '~/.vim/unite'
let g:unite_source_grep_command = 'ack'
" let g:unite_source_history_yank_enable=1
" let g:unite_prompt='» '
" -prompt=»\  
" nnoremap <C-f> :Unite -direction=below -start-insert buffer<cr>
" need to exclude env git dirs

" nnoremap <localleader>. :<C-u>Unite -direction=below -start-insert file_rec/async<cr>
" nnoremap <localleader>, :<C-u>Unite -direction=below -buffer-name=mru -start-insert file_mru<cr>
" nnoremap <localleader>l :<C-u>Unite -buffer-name=line -start-insert line<cr>

" nnoremap <localleader>o :<C-u>Unite -no-split -buffer-name=outline -start-insert outline<cr>
" nnoremap <localleader>y :<C-u>Unite -direction=below history/yank<CR>

" nnoremap <leader>vs :Unite grep:.<cr>
" :Unite line:all
" call unite#custom#profile('default', 'context', {
"  \   'start_insert': 1,
"  \   'winheight': 10,
"  \   'direction': 'botright',
"  })

" let g:unite_source_outline_highlight = {
" 		      \ 'comment' : 'Comment',
" 		      \ 'expanded': 'Constant',
" 		      \ 'function': 'Function',
" 		      \ 'id'      : 'Special',
" 		      \ 'macro'   : 'Macro',
" 		      \ 'method'  : 'Function',
" 		      \ 'normal'  : g:unite_abbr_highlight,
" 		      \ 'package' : g:unite_abbr_highlight,
" 		      \ 'special' : 'Macro',
" 		      \ 'type'    : 'Type',
" 		      \ 'level_1' : 'Type',
" 		      \ 'level_2' : 'PreProc',
" 		      \ 'level_3' : 'Identifier',
" 		      \ 'level_4' : 'Constant',
" 		      \ 'level_5' : 'Special',
" 		      \ 'level_6' : g:unite_abbr_highlight,
" 		      \ 'parameter_list': g:unite_abbr_highlight,
" 		      \ }

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Play nice with supertab
  let b:SuperTabDisabled=1
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
  imap <buffer> <esc>   <esc><Plug>(unite_all_exit)
endfunction

" ====== end of Unite settings =======


" === Bclose ===
" close only current
let bclose_multiple = 1
" nnoremap <leader>df :Bclose!<CR>
" mapping from plugin
" nnoremap <silent> <Leader>bd :Bclose<CR>


" === YCM ===
let g:ycm_key_list_select_completion = ['<Down>']
" let g:ycm_collect_identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1 " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

" === jk jumps ===
let g:jk_jumps_minimum_lines = 2

" === vim-go ===
let g:go_fmt_autosave = 0
let g:go_doc_keywordprg_enabled = 0

" === vim-asterisk ===
map * <Plug>(asterisk-*)
map # <Plug>(asterisk-#)

" === auto-pairs ===
let g:AutoPairsOnlyWhitespace = 1

" === Easy-motion
map <Leader>\ <Plug>(easymotion-prefix)
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_do_shade = 1
let g:EasyMotion_use_smartsign_us = 1
let g:EasyMotion_off_screen_search = 0
let g:EasyMotion_smartcase = 1
let g:EasyMotion_keys = 'asdghklqwertyuiopzxcvbnmfj;'
" hi link EasyMotionTarget2First clever_f
" hi link EasyMotionTarget2Second clever_f
" hi link EasyMotionMoveHL Search
" nnoremap S s
" nmap s <Plug>(easymotion-s)
" vmap s <Plug>(easymotion-s)

nmap q <Plug>(easymotion-f)
vmap q <Plug>(easymotion-f)
nmap Q <Plug>(easymotion-F)
vmap Q <Plug>(easymotion-F)
" works similarly to smartcase option for global searches
" trying to make it mose useful for distant places and Colemak
" let g:EasyMotion_keys = 'tnseriaocmfuplwyx,dhvkgjzq:/b[904TNSERIAOCMFUPLWYXDHVKGJZQ'
" let g:EasyMotion_keys = ';asdfjkl:ghrueicm,.tyvbnwqopzx/[904?ASDFJLGHQWERTYUIOPZXCVBNM<>'