:filetype plugin on
execute pathogen#infect()
let mapleader=','
let g:airline_theme='fairyfloss'

" Highlighted search
set hlsearch
:nnoremap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

" Powerline
set rtp+=/usr/local/lib/python3.5/dist-packages/powerline/bindings/vim/
set laststatus=2

" Nerd Tree
let g:NERDTreeQuitOnOpen=1
let NERDTreeShowHidden=1
nmap <silent> <leader>t :NERDTreeToggle<CR>

" Color
set term=screen-256color
set encoding=utf8
let base16colorspace=256
set t_Co=256
colo lotus
syntax on

" Clipboard
set clipboard=unnamedplus

" Set Timeout
set timeoutlen=1000 ttimeoutlen=0

" Ignore Case-Sensitive Search
:set ignorecase

" Sorting
noremap <leader>s :sort<cr>

" Quick write
map <leader>w :w<cr>

" Remove whitespace and save
nmap <leader>W :%s/\s\+$//e<CR>:w<CR>

" No swap files
set nobackup
set nowritebackup
set noswapfile

" Set tabs
set autoindent
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set shiftround

"" Numbered lines
set number

" Mouse enable
set mouse=a

" Wild Menu
set wildmenu
set wildmode=longest:full,full

" Edit vimrc/tmux/bashrc/i3/polybar
map <leader>ev :e! ~/.vimrc<cr>
map <leader>et :e! ~/.tmux.conf<cr>
map <leader>eb :e! ~/.bashrc<cr>
map <leader>ez :e! ~/.zshrc<cr>
map <leader>ei :e! ~/.config/i3/config<cr>
map <leader>ep :e! ~/.config/polybar/config<cr>
map <leader>eg :e! ~/.config/gtk-3.0/gtk.css<cr>


" Select all
map <leader>a <C-c>ggVG<CR>

" Window Movement Shortcuts
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

" Alternate Window switching with Alt
"for i in range(97,122)
"    let c = nr2char(i)
"    exec "set <M-".c.">=\<Esc>".c
"endfor
"map <A-h> <C-W>h
"map <A-j> <C-W>j
"map <A-k> <C-W>k
"map <A-l> <C-W>l

" Quit / Escape
map <silent><leader>q :q<CR>
map <silent><leader>Q :qa!<CR>
map <silent><Leader>wq :w<CR>:q!<CR>
imap ii <ESC>

" VIM tabbed Windows
nmap tk :tabclose<CR>
nmap tn :tabn<CR>
nmap tp :tabp<CR>

" Save and run
map <F9> :w<CR>:!python3 %<CR>
noremap <leader>R :w<CR>:VimuxRunCommand('python3 ' . bufname('%'))<CR>
nnoremap <S-R> :w<CR>:VimuxRunCommand('python3 ' . bufname('%'))<CR>


" Create new window if not already there
"map <C-h> :call WinMove('h')<cr>
"map <C-j> :call WinMove('j')<cr>
"map <C-k> :call WinMove('k')<cr>
"map <C-l> :call WinMove('l')<cr>
"function! WinMove(key)
"    let t:curwin = winnr()
"    exec "wincmd ".a:key
"    if (t:curwin == winnr())
"        if(match(a:key,'[jk]'))
"            wincmd v
"        else
"            wincmd s
"        endif
"        exec "wincmd ".a:key
"    endif
"endfunction




"================== FISA VIM CONFIG =========================================
" Vim-plug initialization
" Avoid modify this section, unless you are very sure of what you are doing

let vim_plug_just_installed = 0
let vim_plug_path = expand('~/.vim/autoload/plug.vim')
if !filereadable(vim_plug_path)
    echo "Installing Vim-plug..."
    echo ""
    silent !mkdir -p ~/.vim/autoload
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let vim_plug_just_installed = 1
endif

" manually load vim-plug the first time
if vim_plug_just_installed
    :execute 'source '.fnameescape(vim_plug_path)
endif
" ============================================================================
" Active plugins
call plug#begin('~/.vim/plugged')

" Plugins from github repos:

" Override configs by directory
"Plug 'arielrossanigo/dir-configs-override.vim'
" Better file browser
"Plug 'scrooloose/nerdtree'
" Code commenter
Plug 'scrooloose/nerdcommenter'
" Class/module browser
Plug 'majutsushi/tagbar'
" Code and files fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'
" Extension to ctrlp, for fuzzy command finder
Plug 'fisadev/vim-ctrlp-cmdpalette'
" Zen coding
Plug 'mattn/emmet-vim'
"" Git integration
Plug 'motemen/git-vim'
"" Tab list panel
"Plug 'kien/tabman.vim'
"" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"" Terminal Vim with 256 colors colorscheme
""Plug 'fisadev/fisa-vim-colorscheme'
"" Consoles as buffers
"Plug 'rosenfeld/conque-term'
"" Pending tasks list
"Plug 'fisadev/FixedTaskList.vim'
"" Surround
"Plug 'tpope/vim-surround'
"" Autoclose
"Plug 'Townk/vim-autoclose'
" Indent text object
Plug 'michaeljsmith/vim-indent-object'
" Indentation based movements
"Plug 'jeetsukumaran/vim-indentwise'
" Python autocompletion, go to definition.
Plug 'davidhalter/jedi-vim'
" Better autocompletion
"Plug 'Shougo/neocomplcache.vim'
" Snippets manager (SnipMate), dependencies, and snippets repo
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
"Plug 'honza/vim-snippets'
"Plug 'garbas/vim-snipmate'
" Git/mercurial/others diff icons on the side of the file lines
"Plug 'mhinz/vim-signify'
" Automatically sort python imports
"Plug 'fisadev/vim-isort'
" Drag visual blocks arround
"Plug 'fisadev/dragvisuals.vim'
" Window chooser
"Plug 't9md/vim-choosewin'
" Python and other languages code checker
Plug 'scrooloose/syntastic'
" Paint css colors with the real color
"Plug 'lilydjwg/colorizer'
" Ack code search (requires ack installed in the system)
Plug 'mileszs/ack.vim'
if has('python')
    " YAPF formatter for Python
    Plug 'pignacio/vim-yapf-format'
endif
" Relative numbering of lines (0 is the current line)
" (disabled by default because is very intrusive and can't be easily toggled
" on/off. When the plugin is present, will always activate the relative
" numbering every time you go to normal mode. Author refuses to add a setting
" to avoid that)
" Plug 'myusuf3/numbers.vim'

" Plugins from vim-scripts repos:

" Search results counter
Plug 'vim-scripts/IndexedSearch'
" XML/HTML tags navigation
Plug 'vim-scripts/matchit.zip'
" Yank history navigation
Plug 'vim-scripts/YankRing.vim'

" Tell vim-plug we finished declaring plugins, so it can load them
call plug#end()

" ============================================================================
" Install plugins the first time vim runs

if vim_plug_just_installed
    echo "Installing Bundles, please ignore key map error messages"
    :PlugInstall
endif

" ============================================================================
" incremental search
set incsearch

" Comment this line to enable autocompletion preview window
" (displays documentation related to the selected completion option)
" Disabled by default because preview makes the window flicker
set completeopt-=preview

" when scrolling, keep cursor 3 lines away from screen border
set scrolloff=3

" ============================================================================
" Plugins settings and mappings
" Edit them as you wish.

" Tagbar -----------------------------

" toggle tagbar display
map <F4> :TagbarToggle<CR>
" autofocus on tagbar open
let g:tagbar_autofocus = 1

" Tasklist ------------------------------

" show pending tasks list
map <F2> :TaskList<CR>

" CtrlP ------------------------------

" file finder mapping
let g:ctrlp_map = ',f'
function! CtrlPWithSearchText(search_text, ctrlp_command_end)
    execute ':CtrlP' . a:ctrlp_command_end
    call feedkeys(a:search_text)
endfunction
" don't change working directory
let g:ctrlp_working_path_mode = 0
" ignore these files and folders on file finder
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](\.git|\.hg|\.svn|node_modules)$',
  \ 'file': '\.pyc$\|\.pyo$',
  \ }

" Syntastic ------------------------------

" show list of errors and warnings on the current file
nmap <leader>e :Errors<CR>
" check also when just opened the file
let g:syntastic_check_on_open = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8','python3']
let g:syntastic_python_flake8_args = '--ignore="E101,E126,E127,E128,E225,E226,E231,E241,E261,E291,E302,E501,E701,F401,W191,W291,W293,W801,"'
" don't put icons on the sign column (it hides the vcs status icons of signify)
"let g:syntastic_enable_signs = 0
" custom icons (enable them if you use a patched font, and enable the previous
" setting)
"let g:syntastic_error_symbol = '✗'
"let g:syntastic_warning_symbol = '⚠'
"let g:syntastic_style_error_symbol = '✗'
"let g:syntastic_style_warning_symbol = '⚠'

" Jedi-vim ------------------------------

" All these mappings work only for python code:
" Find ocurrences
"let g:jedi#usages_command = ',o'
" Find assignments
"let g:jedi#goto_assignments_command = ',a'
" Go to definition
nmap <leader>d<CR>:call jedi#goto()<CR>
" Go to definition in new tab
nmap <leader>D :tab split<CR>:call jedi#goto()<CR>
" Starts completion if dot is typed
let g:jedi#popup_on_dot = 1
"Shows call signatures
let g:jedi#show_call_signatures = 1

" NeoComplCache ------------------------------

" most of them not documented because I'm not sure how they work
" (docs aren't good, had to do a lot of trial and error to make
" it play nice)
"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_ignore_case = 1
"let g:neocomplcache_enable_smart_case = 1
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_enable_fuzzy_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_fuzzy_completion_start_length = 1
"let g:neocomplcache_auto_completion_start_length = 1
"let g:neocomplcache_manual_completion_start_length = 1
"let g:neocomplcache_min_keyword_length = 1
"let g:neocomplcache_min_syntax_length = 1
"" complete with workds from any opened file
"let g:neocomplcache_same_filetype_lists = {}
"let g:neocomplcache_same_filetype_lists._ = '_'

" Autoclose ------------------------------

" Fix to let ESC work as espected with Autoclose plugin
let g:AutoClosePumvisible = {"ENTER": "\<C-Y>", "ESC": "\<ESC>"}

" NeoComplete Settings
:set completeopt=longest,menuone
let g:neocomplete#enable_at_startup=1
let g:neocomplete_enable_ignore_case = 1
let g:neocomplete_enable_smart_case = 1
let g:neocomplete_enable_auto_select = 1
let g:neocomplete_enable_fuzzy_completion = 1
let g:neocomplete_enable_camel_case_completion = 1
let g:neocomplete_enable_underbar_completion = 1
let g:neocomplete_fuzzy_completion_start_length = 1
let g:neocomplete_auto_completion_start_length = 1
let g:neocomplete_manual_completion_start_length = 1
let g:neocomplete_min_keyword_length = 1
let g:neocomplete_min_syntax_length = 1
let g:neocomplete_same_filetype_lists = {}
let g:neocomplete_same_filetype_lists._ = '_'
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType python set omnifunc=jedi#completions
:inoremap <expr><C-j> pumvisible() ? "\<C-N>" : "\<C-j>"
:inoremap <expr><C-k> pumvisible() ? "\<C-P>" : "\<C-k>"
:inoremap <expr><CR> pumvisible() ? "\<C-Y>" : "\<CR>"
:inoremap <expr><TAB> pumvisible() ? "\<C-Y>" : "\<TAB>"
