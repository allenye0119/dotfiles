let g:loaded_python_provider = 1
let g:python3_host_prog = '/home/aye/miniconda3/bin/python'

""""""""""""
" vim-plug "
""""""""""""

call plug#begin('~/.local/share/nvim/plugged')

" appereance
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'
Plug 'altercation/vim-colors-solarized'

" snippets and autocomplete
Plug 'SirVer/ultisnips'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'honza/vim-snippets'
Plug 'kristijanhusak/vim-carbon-now-sh'

" moving around
Plug 'christoomey/vim-tmux-navigator'
Plug 'bkad/camelcasemotion'
Plug 'easymotion/vim-easymotion'
Plug 'haya14busa/incsearch.vim'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch-easymotion.vim'

" file-related
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" git integration
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'xuyuanp/nerdtree-git-plugin'

" tags
Plug 'majutsushi/tagbar'
Plug 'ternjs/tern_for_vim'

" easy commenting
Plug 'scrooloose/nerdcommenter'

" close buffer without closing window
Plug 'qpkorr/vim-bufkill'

" dealing with paired-characters
" Plug 'tpope/vim-surround'
" Plug 'cohama/lexima.vim'

" syntax checking
Plug 'w0rp/ale'

" language packs
Plug 'sheerun/vim-polyglot'
Plug 'lervag/vimtex'
Plug 'ap/vim-css-color'
Plug 'jparise/vim-graphql'

" distraction-free writing
"Plug 'junegunn/goyo.vim'
"Plug 'junegunn/limelight.vim'

" must be at the last
Plug 'ryanoasis/vim-devicons'

" vim tmux focus events
Plug 'tmux-plugins/vim-tmux-focus-events'

" save vim session automatically
Plug 'tpope/vim-obsession'

call plug#end()


""""""""""
" Leader "
""""""""""

let mapleader = ','



"""""""""""""""""""
" Plugin Settings "
"""""""""""""""""""

" devicons
set encoding=utf8
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

" airline
set laststatus=2
let g:airline_theme = 'solarized'
let g:airline_solarized_bg = 'dark'
let g:airline_powerline_fonts = 1
let g:airline_skip_empty_sections = 1

"let g:airline_left_sep = ' '
"let g:airline_right_sep = ' '
"let g:airline_left_alt_sep = ' '
"let g:airline_right_alt_sep = ' '
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_alt_sep = ''

let g:airline#extensions#whitespace#checks = []

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1

let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#tmuxline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#hunks#enabled = 1

let g:airline#extensions#ale#error_symbol = 'E:'
let g:airline#extensions#ale#warning_symbol = 'W:'
let g:airline#extensions#ale#show_line_number = 0
let g:airline#extensions#ale#enabled = 1

nmap <Leader>1 <Plug>AirlineSelectTab1
nmap <Leader>2 <Plug>AirlineSelectTab2
nmap <Leader>3 <Plug>AirlineSelectTab3
nmap <Leader>4 <Plug>AirlineSelectTab4
nmap <Leader>5 <Plug>AirlineSelectTab5
nmap <Leader>6 <Plug>AirlineSelectTab6
nmap <Leader>7 <Plug>AirlineSelectTab7
nmap <Leader>8 <Plug>AirlineSelectTab8
nmap <Leader>9 <Plug>AirlineSelectTab9

" tmuxline
 let g:tmuxline_separators = {
    \ 'left': '',
    \ 'right': '',
    \ 'left_alt': '|',
    \ 'right_alt': '|',
    \ 'space': ' '}

" devicon
let g:webdevicons_conceal_nerdtree_brackets = 1
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '
let g:WebDevIconsUnicodeDecorateFolderNodes = 1
let g:DevIconsEnableFoldersOpenClose = 1

" youcompleteme
set pumheight=20
let g:ycm_python_binary_path = 'python'
let g:ycm_key_list_select_completion = ['<C-n>']
let g:ycm_key_list_previous_completion = ['<C-p>']
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_filepath_completion_use_working_dir = 1

" ultisnips
let g:UltiSnipsExpandTrigger = '<TAB>'
let g:UltiSnipsJumpForwardTrigger = '<TAB>'
let g:UltiSnipsJumpBackwardTrigger = '<C-TAB>'

" camelcasemoving
omap <silent> iw <Plug>CamelCaseMotion_iw
xmap <silent> iw <Plug>CamelCaseMotion_iw
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge

" easymotion
let g:EasyMotion_do_mapping = 0
let g:EasyMotion_smartcase = 1

map <Leader>s <Plug>(easymotion-s2)
map <Leader>l <Plug>(easymotion-lineanywhere)
map <Leader>j <Plug>(easymotion-bd-jk)

map / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map n <Plug>(easymotion-next)
map N <Plug>(easymotion-prev)

" fuzzy search
function! s:config_easyfuzzymotion(...) abort
    return extend(copy({
    \   'converters': [incsearch#config#fuzzyword#converter()],
    \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
    \   'keymap': {"\<CR>": '<Over>(easymotion)'},
    \   'is_expr': 0,
    \   'is_stay': 1
    \ }), get(a:, 1, {}))
endfunction
noremap <silent><expr> <Leader>/ incsearch#go(<SID>config_easyfuzzymotion())

" vim-tmux-navigator
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<CR>
nnoremap <silent> <C-j> :TmuxNavigateDown<CR>
nnoremap <silent> <C-k> :TmuxNavigateUp<CR>
nnoremap <silent> <C-l> :TmuxNavigateRight<CR>
inoremap <silent> <C-h> <ESC>:TmuxNavigateLeft<CR>
inoremap <silent> <C-j> <ESC>:TmuxNavigateDown<CR>
inoremap <silent> <C-k> <ESC>:TmuxNavigateUp<CR>
inoremap <silent> <C-l> <ESC>:TmuxNavigateRight<CR>

"ctrlp
"let g:ctrlp_prompt_mappings = {
    "\ 'PrtBS()':              ['<bs>'],
    "\ 'ToggleType(1)':        ['<C-l>'],
    "\ 'ToggleType(-1)':       ['<C-h>'],
    "\ 'PrtHistory(-1)':       [],
    "\ 'MarkToOpen()':         ['<C-n>'],
    "\ 'PrtCurLeft()':         ['<Left>'],
    "\ 'PrtCurRight()':        ['<Right>']
    "\ }
"let g:ctrlp_open_multiple_files = 'ij'
"let g:ctrlp_open_new_file = 'r'

" nerdtree
autocmd bufenter *
    \ if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree())
    \ | q | endif
nnoremap <silent> <c-_> :NERDTreeToggle<CR>
inoremap <silent> <c-_> <esc>:NERDTreeToggle<CR>i
let NERDTreeAutoDeleteBuffer=1

" vim-nerd-tree-syntax-highlight
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

" nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : '+',
    \ "Staged"    : '!',
    \ "Untracked" : '?',
    \ "Renamed"   : '→',
    \ "Unmerged"  : '=',
    \ "Deleted"   : 'x',
    \ "Dirty"     : '+',
    \ "Clean"     : '',
    \ 'Ignored'   : '~',
    \ "Unknown"   : ''}
    
" vim-gutter
highlight GitGutterAdd ctermbg=8 ctermfg=2
highlight GitGutterChange ctermbg=8 ctermfg=3
highlight GitGutterDelete ctermbg=8 ctermfg=1
highlight GitGutterChangeDelete ctermbg=8 ctermfg=2
let g:gitgutter_sign_removed = '-'
let g:gitgutter_sign_removed_first_line = '-'

" nerdcommenter
" let g:NERDSpaceDelims = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCustomDelimiters = { 'yaml': { 'left': '# ','right': '' } }
noremap <silent> <Leader>c :call NERDComment(0, "toggle")<CR>
inoremap <silent> <Leader>c <ESC>:call NERDComment(0, "toggle")<CR>i

" tagbar
let g:tagbar_sort = 0
let g:tagbar_previewwin_pos = ''
let g:tagbar_iconchars = ['▸', '▾']
let g:tagbar_map_togglefold = 't'
let g:tagbar_map_nexttag = '<TAB>'
let g:tagbar_map_prevtag = '<S-TAB>'
let g:tagbar_map_previewwin = '<SPACE>'
let g:tagbar_map_showproto = 'P'
nnoremap <C-\> :TagbarToggle<CR>
inoremap <C-\> <esc>:TagbarToggle<CR>i

" ale
let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters = {
\   'python': ['isort', 'flake8'],
\   'sh': ['shellcheck'],
\   'yaml': ['yamllint']
\}
let g:ale_fixers = {
\   'python': ['isort', 'yapf']
\}
let g:ale_sign_error = '◈'
let g:ale_sign_warning = '◈'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
nnoremap <silent> <Down> :ALENext<CR>
nnoremap <silent> <Up> :ALEPrevious<CR>
inoremap <silent> <Down> <C-o>:ALENext<CR>
inoremap <silent> <Up> <C-o>:ALEPrevious<CR>

" vim-polyglot
let g:polyglot_disabled = ['latex']

" vimtex
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_latexmk_progname = 'nvr'
let g:tex_flavor = 'latex'

" dragvisuals
"source $HOME/.dotfiles/vim/dragvisuals.vim
"vmap  <expr>  <LEFT>   DVB_Drag('left')
"vmap  <expr>  <RIGHT>  DVB_Drag('right')
"vmap  <expr>  <DOWN>   DVB_Drag('down')
"vmap  <expr>  <UP>     DVB_Drag('up')
"vmap  <expr>  D        DVB_Duplicate()
"let g:DVB_TrimWS = 1



""""""""""""""""""""
" General Settings "
""""""""""""""""""""

" some stuff
set nocompatible
set wildmenu
set wildignore+=*.swp,*.swo,*swn,*.zip,*.png,*.jpg,*jpeg,*pdf,.git,__pycache__
set foldenable
set mouse=a
set timeoutlen=500
set backspace=indent,eol,start
set scrolloff=8
set iskeyword-=_,A-Z
set splitright
set splitbelow
set completeopt-=preview

" color
set t_Co=256
set background=dark
colorscheme solarized

" line indicators
set colorcolumn=89
set cursorline
highlight Normal ctermbg=none

" tab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" indentation
set autoindent
set smartindent

" search
set showmatch
set incsearch
set hlsearch
highlight Search ctermfg=none cterm=underline,bold
set ignorecase
set smartcase

" fold
set foldenable
set foldmethod=marker
set foldlevelstart=99
set foldopen=block,hor,insert,jump,mark,percent,quickfix,search,tag,undo

" line number
set number
set nuw=6
set relativenumber
highlight LineNr ctermbg=none

" buffer
set hidden

" jump to the last position when opening a file
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif




""""""""""""
" Mappings "
""""""""""""

" source/edit vimrc
nnoremap <Leader>sv :source ~/.config/nvim/init.vim<CR>
nnoremap <silent> <Leader>ev :e ~/.config/nvim/init.vim<CR>

" open/save/close buffer
nnoremap <Leader>e :e<SPACE>
nnoremap <silent> <Leader>w :w<CR>
nnoremap <silent> <Leader>x :BW<CR>
nnoremap <silent> <Leader>X :bd<CR>
nnoremap <silent> <Leader>q :wa \| qa<CR>

" split window
nnoremap <Leader>v :hsplit<SPACE>
nnoremap <Leader>h :vsplit<SPACE>

" navigate through buffer
nnoremap <silent> <Left> :bp<CR>
nnoremap <silent> <Right> :bn<CR>
inoremap <silent> <Left> <ESC>:bp<CR>
inoremap <silent> <Right> <ESC>:bn<CR>

" escape
" inoremap kj <ESC>
inoremap jk <ESC>

" :->;
nnoremap ; :

" move to start/end of line
nnoremap H ^
nnoremap L $

" fast moving
nnoremap <C-f> <C-f>zz
nnoremap <C-b> <C-b>zz

" move line up/down one line
nnoremap - ddkP
nnoremap _ ddp

" search selected text
vnoremap // y/<C-R>"<CR>

" select previously selected text
nnoremap <Leader>ss gv

" select pasted text
nnoremap <Leader>sp `[v`]

" select innerword
nnoremap <SPACE> viw
nnoremap <CR> ciw

" copy and paste current line
nnoremap pp Vyp

" delete current line in insert mode
inoremap <C-d> <ESC>ddi

" undo in insert mode
inoremap <C-u> <ESC>ui

" toggle upper/lower case of a word
nnoremap <C-c> viw~
inoremap <C-c> <ESC>lviw~i

" remove highlight
nnoremap <silent> <Leader><CR> :nohl<CR>

" toggle paste mode
nnoremap <silent> <Leader>pp :setlocal paste!<CR>
