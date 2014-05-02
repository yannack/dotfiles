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
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-surround'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'vim-scripts/The-NERD-tree'
Plugin 'vim-scripts/QuickBuf'
Plugin 'vim-scripts/taglist.vim'
Plugin 'vim-scripts/SrcExpl'
Plugin 'myusuf3/numbers.vim'
Plugin 'mitechie/pyflakes-pathogen'
Plugin 'klen/python-mode'
Plugin 'majutsushi/tagbar'
Plugin 'SirVer/ultisnips'
Plugin 'chrismccord/bclose.vim'
Plugin 'brookhong/cscope.vim'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)%{fugitive#statusline()}
set laststatus=2
filetype plugin indent on
 
syntax on
set number
set hlsearch
set showmatch
set incsearch
set ignorecase
set nowrap
set autoindent
set history=1000
set cursorline
"if has("unnamedplus")
"  set clipboard=unnamedplus
"elseif has("clipboard")
"  set clipboard=unnamed
"endif

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

set background=dark
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
"colorscheme solarized
"colorscheme wombat
colorscheme Tomorrow-Night

nmap <C-W>! <Plug>Bclose

" Tags
set tags=./tags;
nmap <F8> :TagbarToggle<CR>

" Source Explorer Toggle 
nmap <F6> :SrcExplToggle<CR>

" Set bash as default editor
let g:is_bash = 1

" // Set the height of Source Explorer window                                  "
" let g:SrcExpl_winHeight = 8
"                                                                              "
" // Set 100 ms for refreshing the Source Explorer                             "
" let g:SrcExpl_refreshTime = 100
"                                                                              "
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
nnoremap <F2> :NumbersToggle<CR>

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

setlocal foldmethod=syntax
autocmd Syntax c,cpp,vim,xml,html,xhtml,perl,python,ruby,java normal zR

"" PEP-8
"let g:pep8_map='<leader>8'
"
"" VirtualEnv support (not sure this is needed anymore)
"" Add the virtualenv's site-packages to vim path
"py << EOF
"import os.path
"import sys
"import vim
"if 'VIRTUAL_ENV' in os.environ:
"    project_base_dir = os.environ['VIRTUAL_ENV']
"    sys.path.insert(0, project_base_dir)
"    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"    execfile(activate_this, dict(__file__=activate_this))
"EOF

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


let g:qb_hotkey = "<F9>"
" For digraphs, use C-y => <C-y> + a' = á 
inoremap <C-y> <C-k>
" For better autocompletion in Ex mode
set wildmenu
set wildmode=full
" Type %% in a command, such as :e, to expand to the directory of the
" current file
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'
