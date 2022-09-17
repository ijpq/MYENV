"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Important:
"       This requires that you install https://github.com/amix/vimrc !
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
" let s:vim_runtime = expand('<sfile>:p:h')."/.."
" call pathogen#infect(s:vim_runtime.'/sources_forked/{}')
" call pathogen#infect(s:vim_runtime.'/sources_non_forked/{}')
" call pathogen#infect(s:vim_runtime.'/my_plugins/{}')
" call pathogen#helptags()

call plug#begin('~/.vim_runtime/my_plugins')
Plug 'https://github.com/jiangmiao/auto-pairs.git'
" Plug 'https://github.com/mileszs/ack.vim.git'
" Plug 'https://github.com/nathanaelkane/vim-indent-guides.git'
Plug 'https://github.com/itchyny/lightline.vim.git'
" Plug 'https://github.com/skywind3000/asyncrun.vim.git'
Plug 'https://github.com/ludovicchabant/vim-gutentags.git'
" Plug 'https://github.com/dense-analysis/ale.git'
Plug 'https://github.com/octol/vim-cpp-enhanced-highlight.git'
" Plug 'https://github.com/vim-python/python-syntax.git'
Plug 'https://github.com/ycm-core/YouCompleteMe.git'
Plug 'https://github.com/preservim/nerdtree.git', {'on':'NERDTreeToggle'}
Plug 'ojroques/vim-oscyank'
" Plug 'maximbaz/lightline-ale'
Plug 'jabirali/vim-tmux-yank'
Plug 'https://github.com/itchyny/vim-gitbranch.git'
" Plug 'https://github.com/mhinz/vim-signify.git'
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'tomasiser/vim-code-dark'
Plug 'skywind3000/gutentags_plus'
" Plug 'https://github.com/kshenoy/vim-signature.git'
Plug 'https://github.com/airblade/vim-gitgutter.git'
Plug 'ryanoasis/vim-devicons'
" Plug 'skywind3000/vim-preview'
" Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next' }
" Plug 'bagrat/vim-buffet'
" Plug 'jlanzarotta/bufexplorer'

""""""""""""""""""""""""""""""
" => bufExplorer plugin
""""""""""""""""""""""""""""""
" let g:bufExplorerDefaultHelp=0
" let g:bufExplorerShowRelativePath=1
" let g:bufExplorerFindActive=1
" let g:bufExplorerSortBy='name'
" map <leader>o :BufExplorer<cr>


""""""""""""""""""""""""""""""
" => MRU plugin
""""""""""""""""""""""""""""""
" let MRU_Max_Entries = 400
" map <leader>f :MRU<CR>


""""""""""""""""""""""""""""""
" => YankStack
""""""""""""""""""""""""""""""
" let g:yankstack_yank_keys = ['y', 'd']
" 
" nmap <C-p> <Plug>yankstack_substitute_older_paste
" nmap <C-n> <Plug>yankstack_substitute_newer_paste




""""""""""""""""""""""""""""""
" => ZenCoding
""""""""""""""""""""""""""""""
" Enable all functions in all modes
" let g:user_zen_mode='a'


""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
""""""""""""""""""""""""""""""
" ino <C-j> <C-r>=snipMate#TriggerSnippet()<cr>
" snor <C-j> <esc>i<right><C-r>=snipMate#TriggerSnippet()<cr>
" let g:snipMate = { 'snippet_version' : 1 }


""""""""""""""""""""""""""""""
" => Vim grep
""""""""""""""""""""""""""""""
" let Grep_Skip_Dirs = 'RCS CVS SCCS .svn generated'
" set grepprg=/bin/grep\ -nH


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=0
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=45
map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:multi_cursor_use_default_mapping=0
" 
" " Default mapping
" let g:multi_cursor_start_word_key      = '<C-s>'
" let g:multi_cursor_select_all_word_key = '<A-s>'
" let g:multi_cursor_start_key           = 'g<C-s>'
" let g:multi_cursor_select_all_key      = 'g<A-s>'
" let g:multi_cursor_next_key            = '<C-s>'
" let g:multi_cursor_prev_key            = '<C-p>'
" let g:multi_cursor_skip_key            = '<C-x>'
" let g:multi_cursor_quit_key            = '<Esc>'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => surround.vim config
" Annotate strings with gettext 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vmap Si S(i_<esc>f)
" au FileType mako vmap Si S"i${ _(<esc>2f"a) }<esc>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:lightline = {
"      \ 'colorscheme': 'one',
"      \ 'active': {
"      \   'left': [ ['mode', 'paste'], 
"      \             ['fugitive', 'readonly', 'absolutepath', 'modified'] ],
"      \   'right': [ [ 'lineinfo' ], ['percent'] ]
"      \ },
"      \ 'component': {
"      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
"      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
"      \   'fugitive': '%{exists("*FugitiveHead")?FugitiveHead():""}'
"      \ },
"      \ 'component_visible_condition': {
"      \   'readonly': '(&filetype!="help"&& &readonly)',
"      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
"      \   'fugitive': '(exists("*FugitiveHead") && ""!=FugitiveHead())'
"      \ },
"      \ 'separator': { 'left': ' ', 'right': ' ' },
"      \ 'subseparator': { 'left': ' ', 'right': ' ' }
"      \ }
let g:lightline = {}

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }
let g:lightline.component_type = {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \ }
let g:lightline.active = { 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ]] }
let g:lightline.active = {
            \ 'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
            \            [ 'lineinfo' ],
	    \            [ 'percent' ],
	    \            [ 'fileformat', 'fileencoding', 'filetype'] ], 
        \   'left': [['mode', 'paste'], ['absolutepath']]}



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vimroom
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:goyo_width=100
" let g:goyo_margin_top = 2
" let g:goyo_margin_bottom = 2
" nnoremap <silent> <leader>z :Goyo<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ale (syntax checker and linter)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\   'javascript': ['eslint'],
\   'python': ['flake8', 'mypy'],
\   'go': ['go', 'golint', 'errcheck']
\}
" 
" nmap <silent> <leader>a <Plug>(ale_next_wrap)
" 
" " Disabling highlighting
" let g:ale_set_highlights = 0
" 
" " Only run linting when saving the file
" let g:ale_lint_on_text_changed = 'never'
" let g:ale_lint_on_enter = 0

"始终开启标志列
" let g:ale_sign_column_always = 1
" let g:ale_set_highlights = 0
" "自定义error和warning图标
" let g:ale_sign_error = '✗'
" let g:ale_sign_warning = '⚡'
" "在vim自带的状态栏中整合ale
" let g:ale_statusline_format = ['✗ %d', '⚡ %d', '✔ OK']
" "显示Linter名称,出错或警告等相关信息
" let g:ale_echo_msg_error_str = 'E'
" let g:ale_echo_msg_warning_str = 'W'
" let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
"普通模式下，sp前往上一个错误或警告，sn前往下一个错误或警告
" nmap sp <Plug>(ale_previous_wrap)
" nmap sn <Plug>(ale_next_wrap)
"<Leader>s触发/关闭语法检查
" nmap <Leader>s :ALEToggle<CR>
"<Leader>d查看错误或警告的详细信息
" nmap <Leader>d :ALEDetail<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:gitgutter_enabled=0
" nnoremap <silent> <leader>d :GitGutterToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => EditorConfig (project-specific EditorConfig rule)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" let g:EditorConfig_exclude_patterns = ['fugitive://.*']

"""
"cpp-enhanced-highlight
""""
let g:cpp_class_scope_highlight = 1  
let g:cpp_member_variable_highlight = 1  
let g:cpp_concepts_highlight = 1  
let g:cpp_experimental_simple_template_highlight = 1  
"""
"python-syntax
""""
let g:python_highlight_all = 1

"""""""""""""""""
" ident guidelines 
"""""""""""""""""
let g:indent_guides_enable_on_vim_startup = 1

""""
" ack
""""
"""
"ale
""""
" let g:ale_linters_explicit = 1
" " let g:ale_completion_delay = 1
" let g:ale_echo_delay = 20
" let g:ale_lint_delay = 500
" let g:ale_echo_msg_format = '[%linter%] %code: %%s'
" let g:ale_lint_on_text_changed = 'normal'
" let g:ale_lint_on_insert_leave = 1
" let g:airline#extensions#ale#enabled = 1
" let g:ale_sign_column_always = 1
" let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
" let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
" let g:ale_c_cppcheck_options = ''
" let g:ale_cpp_cppcheck_options = ''
" let g:ale_sign_error = '✗'
" let g:ale_sign_warning = '⚡'

"""
"gutentags
"""
" ctags related param
" set tags=./.tags;,.tags

let g:gutentags_define_advanced_commands = 1
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand("~/.cache/tags")
let g:gutentags_cache_dir = s:vim_tags

"配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

let g:gutentags_modules = []

" ctags got some ERROR, so there comment it.
" if executable('ctags')
"     let g:gutentags_modules += ['ctags']
" endif
"
if executable('gtags-cscope') && executable('gtags')
    let g:gutentags_modules += ['gtags_cscope']
endif
let g:gutentags_ctags_extra_args = []
let g:gutentags_ctags_extra_args += ['--extras=+q', '--output-format=e-ctags']
let g:gutentags_auto_add_gtags_cscope = 1

" let g:gutentags_ctags_exclude = ["*/MegBrain/third_party/*"]

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" if has("cscope")
"     if executable('gtags-cscope') && executable('gtags')
"         "禁用原GscopeFind按键映射
"         let g:gutentags_plus_nomap = 1
"         "Find this C symbol 查找C语言符号，即查找函数名、宏、枚举值等出现的地方
"         nmap <C-\>s :GscopeFind s <C-R>=expand("<cword>")<CR><CR>
"         "Find this difinition 查找函数、宏、枚举等定义的位置，类似ctags所提供的功能
"         nmap <C-\>g :GscopeFind g <C-R>=expand("<cword>")<CR><CR>
"         "Find functions called by this function 查找本函数调用的函数
"         nmap <C-\>d :GscopeFind d <C-R>=expand("<cword>")<CR><CR>
"         "Find functions calling this function 查找调用本函数的函数
"         nmap <C-\>c :GscopeFind c <C-R>=expand("<cword>")<CR><CR>
"         "Find this text string 查找指定的字符串
"         nmap <C-\>t :GscopeFind t <C-R>=expand("<cword>")<CR><CR>
"         "Find this egrep pattern 查找egrep模式，相当于egrep功能，但查找速度快多了
"         nmap <C-\>e :GscopeFind e <C-R>=expand("<cword>")<CR><CR>
"         "Find this file 查找并打开文件，类似vim的能
"         nmap <C-\>f :GscopeFind f <C-R>=expand("<cfile>")<CR><CR>
"         "Find files #including this file 查找包含本文件的文件
"         nmap <C-\>i :GscopeFind i ^<C-R>=expand("<cfile>")<CR>$<CR>
"     endif
" endif

let $GTAGSLABEL = 'native'
let $GTAGSCONF = '/home/tangke/.install/share/gtags/gtags.conf'

"""
" gutentags-plus
"""
let g:gutentags_trace=0
let g:gutentags_plus_switch=1
"""
" gitgutter
"""
set signcolumn=yes
let g:gitgutter_sign_added = '++'
let g:gitgutter_sign_modified = '~~'
let g:gitgutter_sign_removed = '--'
let g:gitgutter_sign_removed_first_line = '^^'
let g:gitgutter_sign_removed_above_and_below = '{'
let g:gitgutter_sign_modified_removed = 'ww'
highlight GitGutterAdd ctermfg=green
highlight GitGutterChange ctermfg=blue
highlight GitGutterDelete ctermfg=red
let g:gitgutter_max_signs=-1
let g:gitgutter_highlight_lines=1

"""
"leaderF
"""

"keymap
let g:Lf_ShortcutF = '<C-I>'
let g:Lf_ShortcutB = '<C-P>'
noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
nmap <C-F> <Plug>LeaderfRgPrompt
noremap <leader>ll :LeaderfFunction!<cr>
" nmap <C-p> :LeaderfFunction!<CR>
"
" attributes
let g:Lf_WindowPosition = 'bottom'
let g:Lf_PreviewCode = 1
let g:Lf_PreviewHorizontalPosition = 'center'
let g:Lf_PreviewInPopup = 1
let g:Lf_RGHighlightInPreview = 1
let g:Lf_GtagsAutoGenerate = 0
let g:Lf_GtagsGutentags = 0
let s:leaderfcache=expand('~/.cache/.LfCache/')
if !isdirectory(s:leaderfcache)
   silent! call mkdir(s:leaderfcache, 'p')
endif
let g:Lf_CacheDirectory = s:leaderfcache
let g:Lf_ShowDevIcons = 0
let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
let g:Lf_RootMarkers = ['.project', '.root', '.svn']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_ShowRelativePath = 0
let g:Lf_HideHelp = 0
let g:Lf_StlColorscheme = 'powerline'
let g:Lf_PreviewResult = {'Function':1, 'BufTag':0, 'File':0, 'Gtags':0}

" let g:Lf_ShortcutF = '<c-p>'
" noremap <c-n> :LeaderfMru<cr>
" noremap <m-n> :LeaderfBuffer<cr>
" noremap <m-m> :LeaderfTag<cr>

"""
"YCM
""""
let g:ycm_add_preview_to_completeopt = 0
let g:ycm_show_diagnostics_ui = 0
let g:ycm_server_log_level = 'info'
let g:ycm_min_num_identifier_candidate_chars = 2
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_complete_in_strings=1
let g:ycm_key_invoke_completion = '<c-z>'
let g:ycm_global_ycm_extra_conf = expand("~/.vim_runtime/my_plugins/YouCompleteMe/.ycm_extra_conf.py")
let g:ycm_confirm_extra_conf = 0
let g:ycm_filetype_blacklist = { 'leaderf':1}
let g:ycm_seed_identifiers_with_syntax = 1
set completeopt=menu,menuone

noremap <c-z> <NOP>

let g:ycm_semantic_triggers =  {
           \ 'c,cpp,python,java,go,erlang,perl': ['re!\w{2}'],
           \ 'cs,lua,javascript': ['re!\w{2}'],
           \ }

"""
" vim preview
"""
" autocmd FileType qf nnoremap <silent><buffer> p :PreviewQuickfix<cr>
" autocmd FileType qf nnoremap <silent><buffer> P :PreviewClose<cr>

" noremap <m-u> :PreviewScroll -1<cr>
" noremap <m-d> :PreviewScroll +1<cr>
" inoremap <m-u> <c-\><c-o>:PreviewScroll -1<cr>
" inoremap <m-d> <c-\><c-o>:PreviewScroll +1<cr>

"""""
" LCN
"
"""""
let g:LanguageClient_loadSettings = 1
let g:LanguageClient_diagnosticsEnable = 0
let g:LanguageClient_settingsPath = expand('~/.vim/languageclient.json')
let g:LanguageClient_selectionUI = 'quickfix'
let g:LanguageClient_diagnosticsList = v:null
let g:LanguageClient_hoverPreview = 'Never'
let g:LanguageClient_serverCommands = {}
let g:LanguageClient_serverCommands.c = ['cquery']
let g:LanguageClient_serverCommands.cpp = ['cquery']
noremap <leader>rd :call LanguageClient#textDocument_definition()<cr>
noremap <leader>rr :call LanguageClient#textDocument_references()<cr>
noremap <leader>rv :call LanguageClient#textDocument_hover()<cr>

"""
" tab
"""
let g:buffet_show_index = 1


"""
" vim-devicons
"""
set encoding=UTF-8

call plug#end()

filetype plugin indent on

