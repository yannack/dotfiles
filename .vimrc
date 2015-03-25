
set nocompatible
filetype off                   " required for Vundle

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'airblade/vim-gitgutter'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Plugin 'brookhong/cscope.vim'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'chrismccord/bclose.vim'
Plugin 'chase/vim-ansible-yaml'
Plugin 'dkprice/vim-easygrep'
Plugin 'gregsexton/gitv'
Plugin 'honza/vim-snippets'
Plugin 'kien/ctrlp.vim'
Plugin 'klen/python-mode'
Plugin 'majutsushi/tagbar'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'myusuf3/numbers.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'SirVer/ultisnips'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/python.vim'
Plugin 'vim-scripts/QuickBuf'
Plugin 'vim-scripts/ShowTrailingWhitespace'
Plugin 'vim-scripts/SrcExpl'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/The-NERD-tree'
Plugin 'wikitopian/hardmode.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
set laststatus=2
filetype plugin indent on

let mapleader="\<Space>"
syntax on
set number
set hlsearch
set showmatch		" Show matching brackets.
set incsearch		" Incremental search
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set nowrap
set autoindent
set history=1000
set cursorline
" disable mouse clicks over gvim
set mouse=
" To share the clipboard with other applications
" if has("unnamedplus")
"   set clipboard=unnamedplus
" elseif has("clipboard")
"   set clipboard=unnamed
" endif
" have Vim jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

set showcmd		" Show (partial) command in status line.
set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned

set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4

" Snippets variables
let g:snips_github='https://github.com/yannack'
let g:github='https://github.com/yannack'
let g:snips_author='Yannick Brehon'
let g:author='Yannick Brehon'
let g:snips_email=''
let g:email=''
let g:snips_company='Smartmatic, Inc.'
let g:company='Smartmatic, Inc.'

" Airline setup
" set guifont=Sauce\ Code\ Powerline\ 11
" set guifont=Literation\ Mono\ Powerline\ 11
" set guifont=Liberation\ Mono\ for\ Powerline\ 11
" set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 11
" set guifont=Inconsolata\ for\ Powerline\ 11
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 12
" set guifont=Sauce\ Code\ Powerline\ Regular\ 11

let g:airline_powerline_fonts=1
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" allow % to match on tags
runtime macros/matchit.vim

" Nerdtree
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p
let NERDTreeShowBookmarks=1
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=0
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc','\~$','\.swo$','\.swp$','\.git','\.hg','\.svn','\.bzr']
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0

" if has('gui_running')
"     set background=light
" else
"     set background=dark
" endif
set background=light
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
" let g:solarized_termcolors=256

" made silent to allow proper initial installation from Ansible
silent! colorscheme solarized
" colorscheme Tomorrow-Night
highlight ShowTrailingWhitespace ctermbg=red guibg=red

nmap <C-W>! <Plug>Bclose

" Tags
set tags=./tags;
nmap <F8> :TagbarToggle<CR>

" Source Explorer Toggle
nmap <F6> :SrcExplToggle<CR>

" Ctrl-P plugin mappings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Set bash as default editor
let g:is_bash = 1

" // Set "Enter" key to jump into the exact definition context                 "
let g:SrcExpl_jumpKey = "<ENTER>"
"                                                                              "
" // Set "Space" key for back from the definition context                      "
let g:SrcExpl_gobackKey = "<SPACE>"
"                                                                              "
" // In order to Avoid conflicts, the Source Explorer should know what plugins "
" // are using buffers. And you need add their buffer names into below list    "
" // according to the command ":buffers!"                                      "
let g:SrcExpl_pluginList = [
        \ "__Tag_List__",
        \ "__Tagbar__",
        \ "_NERD_tree_",
        \ "Source_Explorer"
    \ ]
"                                                                              "
" // Enable/Disable the local definition searching, and note that this is not  "
" // guaranteed to work, the Source Explorer doesn't check the syntax for now. "
" // It only searches for a match with the keyword according to command 'gd'   "
" let g:SrcExpl_searchLocalDef = 1
"                                                                              "
" // Do not let the Source Explorer update the tags file when opening          "
" let g:SrcExpl_isUpdateTags = 0
"                                                                              "
" // Use 'Exuberant Ctags' with '--sort=foldcase -R .' or '-L cscope.files' to "
" //  create/update a tags file                                                "
" let g:SrcExpl_updateTagsCmd = "ctags --sort=foldcase -R ."
"                                                                              "
" // Set "<F12>" key for updating the tags file artificially                   "
" let g:SrcExpl_updateTagsKey = "<F12>"
"                                                                              "
" // Set "<F3>" key for displaying the previous definition in the jump list    "
let g:SrcExpl_prevDefKey = "<F3>"
"                                                                              "
" // Set "<F4>" key for displaying the next definition in the jump list        "
let g:SrcExpl_nextDefKey = "<F4>"


" Added for cscope
"if has('cscope')
"  set cscopetag cscopeverbose
"
"  if has('quickfix')
"    set cscopequickfix=s-,c-,d-,i-,t-,e-
"  endif
"
"  cnoreabbrev csa cs add
"  cnoreabbrev csf cs find
"  cnoreabbrev csk cs kill
"  cnoreabbrev csr cs reset
"  cnoreabbrev css cs show
"  cnoreabbrev csh cs help
"
"  command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src
"  cs add $CSCOPE_DB
"endif



nmap <F7> :NERDTreeToggle<CR>
nmap <S-F7> :NERDTreeFind<CR>
nnoremap <F2> :NumbersToggle<CR>

" Bind nohl to remove highlighting of last search
noremap <C-n> :nohl<CR>

" cd to the directory containing the file in the buffer
nmap <silent> <leader>cd :lcd %:h<CR>
nmap <silent> <leader>cr :lcd <c-r>=FindGitDirOrRoot()<cr><cr>
nmap <silent> <leader>md :!mkdir -p %:p:h<CR>

" let g:UltiSnipsListSnippets="<s-tab>"
" Default for list of snippets is C-Tab, only works in GVim...
"let g:UltiSnipsExpandTrigger="<C-j>"
"let g:UltiSnipsJumpForwardTrigger="<C-j>"
"let g:UltiSnipsJumpBackwardTrigger="<C-k>"

"""""""""""""""""""""""""""""""""""
"  UltiSnips / YCM Compatibility  "
"""""""""""""""""""""""""""""""""""

let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

au InsertEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
" ---------------
" YCM / python bug: (only prevents "." from completing, but Tab still works)
let g:pymode_rope_complete_on_dot = 0
" Disable rope completion: slow and already provided by YCM
let g:pymode_rope_completion = 0
" let g:pymode_lint_checkers = ['pylint', 'pyflakes', 'pep8', 'mccabe']
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe']

setlocal foldmethod=syntax
set nofoldenable

" Sort visual selection
vnoremap <leader>s :sort<CR>

" Easier indenting of code blocks (does not lose selection after indenting)
vnoremap < <gv
vnoremap > >gv


" For search based on visual selection
" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gV:call setreg('"', old_reg, old_regtype)<CR>

" QuickBuffers
let g:qb_hotkey = "<F9>"

" Create a column to mark the 80th character
set colorcolumn=79
let g:pymode_options_max_line_length = 79
" The following 3 lines are to allow autoformatting with gqap (for a paragraph)
" and auto formatting of comment lines.
set tw=79 " width of document (used by gq)
set nowrap " don't automatically wrap on load
set fo-=t " don't automatically wrap text when typing

" For digraphs, use C-y => <C-y> + a' = á
inoremap <C-y> <C-k>
" For better autocompletion in Ex mode
set wildmenu
set wildmode=full
" Type %% in a command, such as :e, to expand to the directory of the
" current file
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

" Automatic reload of vimrc after changes
autocmd! bufwritepost .vimrc source %

" Automatic close preview window (:pc) once we are done.
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif

" Gundo
nnoremap <F5> :GundoToggle<CR>

" Let's break that habit of using arrow keys
noremap <up> <nop>
noremap <down> <nop>
noremap <left> <nop>
noremap <right> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
inoremap <up> <nop>
" Enable hard mode ...
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" sudo save
command! W :execute ':silent w !sudo tee % > /dev/null' | :edit!

" Add space after comment added by NerdCommenter
let NERDSpaceDelims=1


" A few useful functions
function! FindGitDirOrRoot()
    let filedir = expand('%:p:h')
    let cmd = 'bash -c "(cd ' . filedir . '; git rev-parse --show-toplevel 2>/dev/null)"'
    let gitdir = system(cmd)
    if strlen(gitdir) == 0
        return '/'
    else
        return gitdir[:-2] " chomp
    endif
endfunction

" Delete empty buffers, specially for files opened with --remote option
autocmd BufAdd * :call <SID>DeleteBufferIfEmpty()
function s:DeleteBufferIfEmpty()
    if bufname('%') == ''
        bwipe
        " This will trigger filetype detection, mainly to trigger syntax highlighting
        doautocmd BufRead
    endif
endfunction
