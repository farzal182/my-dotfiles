" == BASIC SETUP ==
set nocompatible	    " enter the current millenium
syntax enable		    " enable syntax
filetype plugin on	    " enable plugin (for netrw)
set hidden
set showtabline=0

" == FINDING FILES ==
" search down into subfolders
set path+=**		    " provides tab-completion foa alrr file-related tasks
set wildmenu		    " Display all matching files when we tab complete


" == General Configuration ==
set tabstop=4               " number of columns occupied by a tab character
set softtabstop=0
set shiftwidth=4
"set expandtab
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set mouse=a                 " Enable mouse usage (all modes)
set hlsearch                " highlight search results
set incsearch	            " incremental search
set noswapfile

" == PLUGINS ==

filetype off
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin('~/.config/nvim/bundle')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"-----------=== Code/Project Navigation ==--------------
Plugin 'scrooloose/nerdtree'			  " Project and file navigation
Plugin 'vim-ctrlspace/vim-ctrlspace'        	  " Tabs/Buffers/Fuzzy/Workspaces/Bookmarks
Plugin 'tiagofumo/vim-nerdtree-syntax-highlight'
Plugin 'vim-airline/vim-airline'		  " Lean & mean status/tabline for vim
Plugin 'vim-airline/vim-airline-themes'	 	  " Themes for airline
Plugin 'mattn/emmet-vim'
Plugin 'thaerkh/vim-indentguides'           " Visual representation of indents
Plugin 'neomake/neomake'                    " Asynchronous Linting and Make Framework
Plugin 'Shougo/deoplete.nvim'               " Asynchronous Completion
Plugin 'roxma/nvim-yarp'                    " Deoplete Dependency #1
Plugin 'roxma/vim-hug-neovim-rpc'           " Deoplete Dependency #2

"-----------=== Other ===---------------
Plugin 'tpope/vim-surround'		    " Parentheses,brackets,quotes,XMLtags, and more
Plugin 'jreybert/vimagit'                   " Git Operations       
"Plugin 'ryanoasis/vim-devicons'		    " Dev Icons
Plugin 'ap/vim-css-color'                           
Plugin 'severin-lemaignan/vim-minimap'              
Plugin 'chriskempson/base16-vim'            " Base 16 colors

"-----------=== Snippets support ===----------------
Plugin 'garbas/vim-snipmate'                " Snippets manager
Plugin 'MarcWeber/vim-addon-mw-utils'       " dependencies #1
Plugin 'tomtom/tlib_vim'                    " dependencies #2
Plugin 'honza/vim-snippets'                 " snippets repo

"-----------=== Leaguages Support ===-------------
Plugin 'scrooloose/nerdcommenter'           " Easy code documentation
Plugin 'mitsuhiko/vim-sparkup'              " Sparkup(XML/jinja/htlm-django/etc.) support
"Plugin 'w0rp/ale'
"Plugin 'sheerun/vim-polyglot'

"-----------=== Python ===------------
"Plugin 'vim-python/python-syntax'
Plugin 'klen/python-mode'                   " Python mode (docs, refactor, lints...)
Plugin 'hynek/vim-python-pep8-indent'
Plugin 'mitsuhiko/vim-python-combined'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'jmcantrell/vim-virtualenv'

" All of your Plugins must be added before the following line
call vundle#end() 
filetype plugin indent on  " allows auto-indenting depending on file type

" == Themes ==
set termguicolors
set background=dark
colorscheme solarized "thinkpad
"colorscheme onehalfdark "base16-default-dark
set guifont=hack:h10:cANSI

" == Tabs / Buffers Settings ==
tab sball
set switchbuf=useopen
set laststatus=2
nmap <F9> :bprev<CR>
nmap <F10> :bnext<CR>
nmap <silent> <leader>q :SyntasticCheck # <CR> :bp <BAR> bd #<CR>

" == Neomake Settings ==
call neomake#configure#automake('w')
let g:neomake_open_list = 2

" == Deoplete Settings ==
" Use deoplete.
"let g:deoplete#enable_at_startup = 1 

" == AIRLINE ==
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1
let g:airline_theme='solarized' "luna base16_spacemacs'
let g:airline_solarized_bg='dark'

" == NERDTree ==
" Uncomment to autostart the NERDTree
" autocmd vimenter * NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI = 1

" == NERDComment Setting ==
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Align line-wise comment delimiters flush left instead of following code indentation
let g:NERDDefaultAlign = 'left'

" Set a language to use its alternate delimiters by default
let g:NERDAltDelims_java = 1

" Add your own custom formats or override the defaults
let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1


" == Minimap ==
let g:minimap_show='<leader>mm'
let g:minimap_update='<leader>mu'
let g:minimap_close='<leader>mc'
let g:minimap_toggle='<leader>mt'


" == Colors ==
hi LineNr ctermfg=242
hi CursorLineNr ctermfg=15
hi VertSplit ctermfg=8 ctermbg=0
hi Statement ctermfg=3


" == DevIcon Settings ==
" loading the plugin 
"let g:webdevicons_enable = 1

" adding the flags to NERDTree 
"let g:webdevicons_enable_nerdtree = 1

" adding to vim-airline's tabline
let g:webdevicons_enable_airline_tabline = 1

" adding to vim-airline's statusline
let g:webdevicons_enable_airline_statusline = 1

" turn on/off file node glyph decorations (not particularly useful)
let g:WebDevIconsUnicodeDecorateFileNodes = 1

" use double-width(1) or single-width(0) glyphs 
" only manipulates padding, has no effect on terminal or set(guifont) font
let g:WebDevIconsUnicodeGlyphDoubleWidth = 1

" whether or not to show the nerdtree brackets around flags 
let g:webdevicons_conceal_nerdtree_brackets = 0

" the amount of space to use after the glyph character (default ' ')
let g:WebDevIconsNerdTreeAfterGlyphPadding = ' '

" Force extra padding in NERDTree so that the filetype icons line up vertically
let g:WebDevIconsNerdTreeGitPluginForceVAlign = 1 

" change the default character when no match found
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'

" set a byte character marker (BOM) utf-8 symbol when retrieving file encoding
" disabled by default with no value
let g:WebDevIconsUnicodeByteOrderMarkerDefaultSymbol = ''

" enable folder/directory glyph flag (disabled by default with 0)
let g:WebDevIconsUnicodeDecorateFolderNodes = 1

" enable open and close folder/directory glyph flags (disabled by default with 0)
let g:DevIconsEnableFoldersOpenClose = 1

" enable pattern matching glyphs on folder/directory (enabled by default with 1)
let g:DevIconsEnableFolderPatternMatching = 1

" enable file extension pattern matching glyphs on folder/directory (disabled by default with 0)
let g:DevIconsEnableFolderExtensionPatternMatching = 0

" === SnipMate Settings ===
let g:snippets_dir='~/.config/nvimbundle/vim-snippets/snippets'

" === Python Settings ===
" python executables for different plugins
let g:pymode_python='python'

" rope
let g:pymode_rope=0
let g:pymode_rope_completion=0
let g:pymode_rope_complete_on_dot=0
let g:pymode_rope_auto_project=0
let g:pymode_rope_enable_autoimport=0
let g:pymode_rope_autoimport_generate=0
let g:pymode_rope_guess_project=0

" documentation
let g:pymode_doc=0
let g:pymode_doc_bind='K'

" lints
let g:pymode_lint=0

" virtualenv
let g:pymode_virtualenv=1

" breakpoints
let g:pymode_breakpoint=1
let g:pymode_breakpoint_key='<leader>b'

" syntax highlight
let g:pymode_syntax=1
let g:pymode_syntax_slow_sync=1
let g:pymode_syntax_all=1
let g:pymode_syntax_print_as_function=g:pymode_syntax_all
let g:pymode_syntax_highlight_async_await=g:pymode_syntax_all
let g:pymode_syntax_highlight_equal_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_stars_operator=g:pymode_syntax_all
let g:pymode_syntax_highlight_self=g:pymode_syntax_all
let g:pymode_syntax_indent_errors=g:pymode_syntax_all
let g:pymode_syntax_string_formatting=g:pymode_syntax_all
let g:pymode_syntax_space_errors=g:pymode_syntax_all
let g:pymode_syntax_string_format=g:pymode_syntax_all
let g:pymode_syntax_string_templates=g:pymode_syntax_all
let g:pymode_syntax_doctests=g:pymode_syntax_all
let g:pymode_syntax_builtin_objs=g:pymode_syntax_all
let g:pymode_syntax_builtin_types=g:pymode_syntax_all
let g:pymode_syntax_highlight_exceptions=g:pymode_syntax_all
let g:pymode_syntax_docstrings=g:pymode_syntax_all

" highlight 'long' lines (>= 80 symbols) in python files
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python,rst,c,cpp highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python,rst,c,cpp match Excess /\%81v.*/
    autocmd FileType python,rst,c,cpp set nowrap
    autocmd FileType python,rst,c,cpp set colorcolumn=80
augroup END

" code folding
let g:pymode_folding=0

" pep8 indents
let g:pymode_indent=1

" code running
let g:pymode_run=1
let g:pymode_run_bind='<F5>'

let g:ale_sign_column_always = 0
let g:ale_emit_conflict_warnings = 0                                                                         
let g:airline#extensions#ale#enabled = 1
let g:pymode_rope_lookup_project = 0
let g:airline#extensions#tabline#enabled = 1

imap <F5> <Esc>:w<CR>:!clear;python %<CR>

"no <down> <Nop>
"no <left> <Nop>
"no <right> <Nop>
"no <up> <Nop>

"ino <down> <Nop>
"ino <left> <Nop>
"ino <right> <Nop>
"ino <up> <Nop>

vno <down> <Nop>
vno <left> <Nop>
vno <right> <Nop>
vno <up> <Nop>

"python3 << EOF
"import nvim
"import git
"def is_git_repo():
"	try:
"		_ = git.Repo('.', search_parent_directories=True).git_dir
"		return "1"
"	except:
"		return "0"
"vim.command("let g:pymode_rope = " + is_git_repo())
"EOF
