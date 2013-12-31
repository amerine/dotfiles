" The .vimrc of Mark Turner <mark@amerine.net>
set nocompatible
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()


" =================
" General
" =================
  set cpoptions=aABceFsWZ
  set wildmenu
  set wildmode=list:longest,full
  set wildignore+=*.png,*.jpg,*.gif,*.ai,*.jpeg,*.psd,*.swp,*.jar,*.zip,*.gem,.DS_Store,log/**,coverage/**

  syntax on
  filetype plugin indent on
  set modelines=0
  set autoread
  set shell=/bin/sh
  set encoding=utf-8 nobomb
  set exrc                     " allow per-project .vimrcs
  set secure                   " disallow autocmd, shell and write
  set nobackup                 " do not keep backups after close
  set nowritebackup            " do not keep backups while working
  set noswapfile               " don't keep swap files either
  set ttimeout
  set ttimeoutlen=50
  set pastetoggle=<F2>

  " Spelling
  hi SpellErrors guibg=red guifg=black ctermbg=red ctermfg=black
  set spell spelllang=en_us  " When you need it, you need it.

  "SWAP & UNDO OPTIONS
  set directory=~/.vim/swapfiles,/var/tmp,/tmp,.

  " Tags
  set tags+=../tags,../../tags,../../../tags,../../../../tags,tmp/tags

" ================
" Editing
" ================
  set number
  set list
  set ruler
  set showcmd
  set showbreak=+
  set showmatch
  set history=1000
  set completeopt=menuone,preview
  set backspace=indent,eol,start   " allow backspacing over everything in insert mode
  set scrolloff=3                  " minimum lines to show around cursor
  set sidescrolloff=3              " min characters to show sideways
  set laststatus=2

  " Formatting
  set autoindent
  set smartindent
  set nowrap
  set softtabstop=2
  set shiftwidth=2
  set tabstop=4
  set shiftround
  set expandtab
  set smarttab
  set textwidth=80
  set colorcolumn=+1
  set formatoptions+=n1

  " Le Bells
  set noerrorbells
  set visualbell

  " Splits
  set splitbelow
  set splitright

  " Searching
  set grepprg=ack
  set hlsearch
  set ignorecase
  set smartcase
  set incsearch
  set wrapscan

  " Folds
  set foldmethod=indent  " really the only way that makes sense
  set foldlevelstart=99  " open all folds by default
  set foldignore=        " don't try to be clever

  " Net-RW
  let g:netrw_liststyle=3

  " Listchars
  if (&termencoding ==# 'utf-8' || &encoding ==# 'utf-8') && version >= 700
    let &listchars = "tab:\u21e5\u00b7,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u26ad"
  else
    set listchars=tab:»·,trail:.,extends:»,precedes:«
  endif

  " Highlight the cursor line for the current window only
  augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
  augroup END

  " Mouse
  if has("mouse")
    set mouse=a
  endif

" ===============
" Key Bindings
" ==============
  let mapleader=',' " set leader to ,
  " leader mappings

  " r   - regenerate tags
  map <silent> <Leader>r :!/usr/local/bin/ctags -f tags -R *<CR><CR>

  " Spelling
  " ss  - toggle spelling
  " sa  - add word
  " sn  - next misspelled word
  " sp  - previous misspelled word
  " s?  - suggest spelling
  nnoremap <Leader>ss :setlocal spell!<CR>
  nnoremap <Leader>sa zg
  nnoremap <Leader>sn ]s
  nnoremap <Leader>sp ]p
  nnoremap <Leader>s? z=

  " Trailing whitespace
  map <leader>s :%s/\s\+$//g<CR>

  " visual mode mappings
  vnoremap <F1> <ESC>
  " keep selections when indenting in visual mode
  xnoremap > >gv
  xnoremap < <gv
  " make search use real regexes
  xnoremap / /\v

  " Shift + Up/Right/Down/Left keeps selection
  nmap <S-up> vk
  vmap <S-up> k
  nmap <S-right> vl
  vmap <S-right> l
  nmap <S-down> vj
  vmap <S-down> j
  nmap <S-left> v
  vmap <S-left> h

  " ,e to find files.
  nmap <leader>e :e **/
  cmap <Leader>e **/

  " C+L clears search
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

  " Unite
  nnoremap <C-p> :Unite -start-insert buffer file_rec/async<cr>
  nnoremap <Leader>/ :Unite grep:.<cr>
  nnoremap <Leader>b :Unite -quick-match buffer <CR>
  nnoremap <Leader>h :Unite -start-insert help <CR>
  nnoremap <Leader>t :Unite -start-insert tag <CR>
  nnoremap <Leader>] :UniteWithCursorWord -quick-match tag <CR>
  nnoremap <Leader>o :Unite outline <CR>
  nnoremap <leader>m :<C-u>Unite file_mru<CR>

" ===============
" Auto Commands
" ===============
  autocmd QuickfixCmdPost grep copen

" ===============
" UI
" ===============
  set background=light
  set t_Co=256
  colorscheme tango-morning

  " Set the cursorline to something a bit more tolerable.
  hi CursorLine guibg=#dfdfdd

  if has("gui_running")
    set guifont=Sauce\ Code\ Powerline:h11
    " a: visual-mode autoselect (takes over the OS selection process)
    " A: autoselect for modeless selection
    " c: use console dialogs for simple choices
    " e: don't use gui tabs, they change the height of the window
    " g: grey-out non-active menu items
    " m: show system menu bars
    set guioptions=aAcegm
    set fuoptions=maxvert,maxhorz
  endif

  " Powerline
  python from powerline.vim import setup as powerline_setup
  python powerline_setup()
  python del powerline_setup

" =============
" Plugins
" =============
  " matchit
  runtime macros/matchit.vim

  " gist
  let g:gist_clip_command = 'pbcopy'
  let g:gist_detect_filetype = 1
  let g:gist_post_private = 1

  " ragtag
  let g:ragtag_global_maps = 1

  " syntastic
  let g:syntastic_check_on_open=1
  let g:syntastic_html_checkers = []
  let g:syntastic_enable_highlighting=0

  " autoclose
  let g:AutoClosePreserveDotReg=0
  let g:AutoClosePairs_add = "'"
  let g:AutoCloseProtectedRegions = ["Comment", "String", "Character"]
