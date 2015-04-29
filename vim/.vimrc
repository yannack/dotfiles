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
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'chase/vim-ansible-yaml'
Plugin 'dkprice/vim-easygrep'
Plugin 'gregsexton/gitv'
Plugin 'honza/vim-snippets'
Plugin 'janko-m/vim-test'
Plugin 'jgdavey/tslime.vim'
Plugin 'klen/python-mode'
Plugin 'majutsushi/tagbar'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'myusuf3/numbers.vim'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Raimondi/delimitMate'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/unite-outline'
Plugin 'Shougo/vimproc.vim'
Plugin 'SirVer/ultisnips'
Plugin 'sjl/gundo.vim'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-repeat'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
Plugin 'tsukkee/unite-tag'
Plugin 'Valloric/YouCompleteMe'
Plugin 'vim-scripts/python.vim'
Plugin 'vim-scripts/ShowTrailingWhitespace'
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

" Easier split navigation
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-L> <C-W>l
map <C-H> <C-W>h
map <C-\> <C-W>w

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

nmap <C-W>x <Plug>Bclose

" Tags
set tags=./tags;
nmap <F8> :TagbarToggle<CR>

" Set bash as default editor
let g:is_bash = 1

" DelimitMate
imap <C-G>f <Plug>delimitMateS-Tab
" For triple quotes
au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
" The next two allow nice <CR> inside brackets, but mayb prove buggy
let delimitMate_expand_cr = 1
let delimitMate_jump_expansion = 1

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
" p for pdb, though it goes to ipdb. default of 'b' conflicts with the unite
" setting below.
let g:pymode_breakpoint_bind = '<leader>p'

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
function! s:DeleteBufferIfEmpty()
    if bufname('%') == ''
        bwipe
        " This will trigger filetype detection, mainly to trigger syntax highlighting
        doautocmd BufRead
    endif
endfunction

" Unite settings
silent! call unite#filters#matcher_default#use(['matcher_fuzzy'])
silent! call unite#filters#sorter_default#use(['sorter_rank'])
" Ctrl-P replacement, relearning will be fast though.
nnoremap <C-p> :Unite -start-insert file_rec/async:!<CR>
let g:unite_source_rec_async_command = 'ag --follow --nocolor --nogroup --hidden -g ""'
let g:unite_source_tag_max_fname_length = 128
let g:unite_source_tag_max_name_length = 64
nnoremap <leader>f   :Unite -start-insert -buffer-name=files -no-split file_rec/async:!<CR>
nnoremap <leader>ufs :Unite -start-insert -buffer-name=files -default-action=split file_rec/async:!<CR>
nnoremap <leader>ufv :Unite -start-insert -buffer-name=files -default-action=vsplit file_rec/async:!<CR>
nnoremap <leader>b :Unite buffer -buffer-name=buffers -no-split <CR>
nnoremap <leader>r :UniteResume<CR>
nnoremap <leader>o :Unite -start-insert -no-split outline<CR>
nnoremap <leader>t :Unite -start-insert -no-split tag<CR>
nnoremap [s :UnitePrev<CR>
nnoremap ]s :UniteNext<CR>
nnoremap [S :UniteFirst<CR>
nnoremap ]S :UniteLast<CR>

" Replace <C-]> with a Unite-tag based search.
autocmd BufEnter *
            \   if empty(&buftype)
            \|      nnoremap <buffer> <C-]> :<C-u>UniteWithCursorWord -immediately tag<CR>
            \|  endif

" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
  nmap <buffer> <C-j>   <Plug>(unite_loop_cursor_down)
  nmap <buffer> <C-k>   <Plug>(unite_loop_cursor_up)

  " Split from within the unite selection
  inoremap <silent><buffer><expr> <C-s> unite#do_action('split')
  nnoremap <silent><buffer><expr> <C-s> unite#do_action('split')
  inoremap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
  nnoremap <silent><buffer><expr> <C-v> unite#do_action('vsplit')

  " Quit unite on backspace from normal mode, or using leader-q
  nnoremap <BS> :UniteClose<CR>
  nnoremap <leader>q :UniteClose<CR>
endfunction

" Unite search -- not sure about this yet...
let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--line-numbers --nocolor --nogroup --smart-case --hidden'
let g:unite_source_grep_recursive_opt = ''
nnoremap <Leader>/ :<C-u>Unite -no-split -silent -buffer-name=ag grep:.<CR>
