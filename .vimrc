" Czacr's .vimrc 20.5

syntax on

set guicursor=n-v-c:block-Cursor-blinkon0
set guicursor+=i:ver100-iCursor-blinkon1

syntax enable
filetype indent plugin on

set guifont=VictorMono\ Nerd\ Font\ 14

set cursorline
set termguicolors

" Markdown preview key mappings
" normal/insert
" Sendtowindow settings
"let g:sendtowindow_use_defaults=0

" auto close html tags
:iabbrev </ </<C-X><C-O>
let g:airline_theme='gruvbox_material'

" disable text wrapping
set nowrap
set number
set autoindent

let g:python_highlight_all=1
let g:python3_host_prog="/usr/bin/python"

let g:coc_global_extensions = ['coc-pyright']
" new window panes open on bottom
set splitbelow splitright

set smartindent

set background=dark
let g:gruvbox_material_background='hard'

" Coc settings
" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:slime_target='neovim'

let g:formatterpath = ['/usr/lib/python3.9/site-packages/autopep8']

"" Vim snippets
"let g:UltiSnipsExpandTrigger="<tab>"
"" list all snippets for current filetype
"let g:UltiSnipsListSnippets="<c-l>"

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

set hidden
"let g:racer_cmd = "/usr/local/bin/racer"
"let g:racer_experimental_completer = 1

" SQL dbext.vim default profile
let g:dbext_default_profile_mySQL='type=MYSQL:user=root:passwd=Theworld#0:dbname=scims'

" YouCompleteMe setup for C++
"let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/youcompleteme/third_party/ycmd/.ycm_extra_conf.py'
"let g:ycm_min_num_identifier_candidate_chars = 0
"let g:ycm_python_interpreter_path='/usr/bin/python3'
" let clangd fully control code completion
"let g:ycm_clangd_uses_ycmd_caching=0
" use installed clangd, not YCM-bundled (which doesn't get updates)
"let g:ycm_clangd_binary_path=exepath("clangd")

" smooth scrolling
let g:comfortable_motion_friction = 80
let g:comfortable_motion_air_drag = 2

" Enhanced C++ Syntax highlighting options
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_posix_standard = 1

filetype plugin indent on

" Resize panes
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-=> :resize +3 <CR>
noremap <silent> <leader>0 :resize -3 <CR>

" remove menu bar
set guioptions=m

" remove tool bar
set guioptions=t

" ignore highlighting warnings
let g:syntastic_quiet_messages = {'level': 'warnings'}

" remove left and right scroll bars
set guioptions=r
set guioptions=l

" line break at 90
set textwidth=90

" airline tabs
let g:airline#extensions#tabline#enabled = 1

" smooth motion scrolling
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"

" airline tab formatting
"let g:airline#extensions#tabline#formatter = 'unique_tail_improve'

" mappings for rust racer (autocomplete)
au FileType rust nmap gd <plug>(rust-def)
au FileType rust nmap gs <plug>(rust-def-split)
au FileType rust nmap gx <plug>(rust-def-vertical)
au FileType rust nmap gt <plug>(rust-def-tab)
au FileType rust nmap <leader>gd <plug>(rust-doc)

" show complete function definition for rust
let g:racer_experimental_completer = 1

" insert paranthes in completion
let g:racer_insert_paren = 1

let mapleader = '\'

let g:airline_section_b = "\uf1f9"

" navigate airline tabs
nnoremap <leader>n :bnext
nnoremap <leader>p :bprevious
nnoremap <leader>- :terminal <cr>
" customize powerline look
let g:airline_left_sep = "\ue0b4"
let g:airline_right_sep = "\ue0b6"
let g:airline_powerline_fonts=1
"let g:airline_section_z = airline#section#create(["\ue0a1" . "%{line(".")}" . "\ue0a3" . "%{col(".")}"])

" pep 8 formatting guidelines
set tabstop=4
set shiftwidth=4
set softtabstop=3
set expandtab

" autocomplete using rust-analyzer

" nerdtree settings
" make it look purtier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" nerdtree toggle (open/closing)
nmap <c-m> :NERDTreeToggle<cr>

" nerdtree on right side
let g:NERDTreeWinPos = "right"



" This is the default option:
" - Preview window on the right with 50% width
" - CTRL-/ will toggle preview window.
" - Note that this array is passed as arguments to fzf#vim#with_preview function.
" - To learn more about preview window options, see `--preview-window` section of `man fzf`.
let g:fzf_preview_window = ['right:50%', 'ctrl-/']
" [Buffers] Jump to the existing window if possible
let g:fzf_buffers_jump = 1

" easier split navigation. you don't have to press ctrl + w then ctrl + j;
" it's just ctrl + j.
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

" autformats rust when saving a buffer
let g:rustfmt_autosave = 1

" autoformat
nmap <c-i> :Autoformat <cr>

set encoding=utf-8
set fileencoding=utf-8


" some clang stuff?
function! ClangCheckImpl(cmd)
  if &autowrite | wall | endif
  echo "Running " . a:cmd . " ..."
  let l:output = system(a:cmd)
  cexpr l:output
  cwindow
  let w:quickfix_title = a:cmd
  if v:shell_error != 0
    cc
  endif
  let g:clang_check_last_cmd = a:cmd
endfunction

function! ClangCheck()
  let l:filename = expand('%')
  if l:filename =~ '\.\(cpp\|cxx\|cc\|c\)$'
    call ClangCheckImpl("clang-check " . l:filename)
  elseif exists("g:clang_check_last_cmd")
    call ClangCheckImpl(g:clang_check_last_cmd)
  else
    echo "Can't detect file's compilation arguments and no previous clang-check invocation!"
  endif
endfunction

nmap <silent> <F5> :call ClangCheck()<CR><CR>:w

" plugins

call plug#begin('~/.vim/plugged/')

" nerdtree
Plug 'scrooloose/nerdtree'

" vim airline status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" bonus colorschemes
Plug 'rafi/awesome-vim-colorschemes'

" devicons for nerdtree
Plug 'ryanoasis/vim-devicons'

" auto completion
"Plug 'ycm-core/youcompleteme'

" auto pep 8
Plug 'tell-k/vim-autopep8'

" vim colorschemes
Plug 'tpope/vim-vividchalk'
Plug 'morhetz/gruvbox'
Plug 'evturn/cosmic-barf'
Plug 'doums/darcula'
Plug 'flrnd/plastic'
Plug 'wadackel/vim-dogrun'
Plug 'niklas-8/vim-darkspace'
Plug 'plainfingers/black_is_the_color'
Plug 'sainnhe/vim-color-forest-night'
Plug 'atahabaki/archman-vim'
Plug 'franbach/miramare'
Plug 'lewis6991/moonlight.vim'
Plug 'flrnd/candid.vim'
Plug 'rktjmp/lush.nvim'
Plug 'dracula/vim'
Plug 'pgavlin/pulumi.vim'
Plug 'arzg/vim-colors-xcode'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'sainnhe/gruvbox-material'
Plug 'jdsimcoe/panic.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'arcticicestudio/nord-vim'
Plug 'erikschreier/nordic-vim'
Plug 'Luxed/ayu-vim'
Plug 'bluz71/vim-moonfly-colors'
Plug 'AhmedAbdulrahman/aylin'

"-------------------
" auto pairs
Plug 'jiangmiao/auto-pairs'

" syntax checking hacks for vim
Plug 'scrooloose/syntastic'
"plug 'vim-syntastic/syntastic'

" auto format
Plug 'chiel92/vim-autoformat'

" rust autocomplete
Plug 'racer-rust/vim-racer'

" syntax highlighting and formatting for rust
Plug 'rust-lang/rust.vim'

" linter (check for errors while you type)
Plug 'dense-analysis/ale'

" git plugin
Plug 'tpope/vim-fugitive'

" multiple cursors
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" python autocomplete
" Plug 'davidhalter/jedi-vim'

" vim motion on speed!
Plug 'easymotion/vim-easymotion'

" python syntax highlighting

"plug 'numirias/semshi'
"Plug 'vim-python/python-syntax'
"Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}


" c+ syntax highlighting
Plug 'bfrg/vim-cpp-modern'

" indentation guides
Plug 'nathanaelkane/vim-indent-guides'

" a collection of language packs
Plug 'sheerun/vim-polyglot'

" interactive command execution
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

" quickly execute code
Plug 'thinca/vim-quickrun'

" Rainbow parantheses
Plug 'kien/rainbow_parentheses.vim'

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Seamless tmux navigator
Plug 'christoomey/vim-tmux-navigator'

" Brings physics-based smooth scrolling to vim.
Plug 'yuttie/comfortable-motion.vim'

" Makes commenting out code easier.
Plug 'preservim/nerdcommenter'

" Show vertical lines at each indentation level.
Plug 'Yggdroot/indentLine'

" Enhanced C++ syntax highlighting
Plug 'octol/vim-cpp-enhanced-highlight'

" Send text to another window.
Plug 'karoliskoncevicius/vim-sendtowindow'

" Take screenshots of vim code
Plug 'jmckiern/vim-shoot', { 'do': '\"./install.py\" geckodriver' }

"" SQL Autocompletion
Plug 'vim-scripts/dbext.vim'


" Syntax files for Solidity.  Plug 'tomlion/vim-solidity'

" Vim-Tmux Navigator
Plug 'christoomey/vim-tmux-navigator'

" vim-scala
Plug 'derekwyatt/vim-scala'

" auto completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Send text to a REPL window
Plug 'jpalardy/vim-slime'

" Markdown preview
Plug 'iamcco/markdown-preview.nvim'

"collection of common LSP configs
Plug 'neovim/nvim-lspconfig'

call plug#end()

let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }

let ayucolor="mirage"
colorscheme gruvbox-material

" Switch window panes from terminal
tnoremap <C-w>h <C-\><C-n><C-w>h
tnoremap <C-w>j <C-\><C-n><C-w>j
tnoremap <C-w>k <C-\><C-n><C-w>k
tnoremap <C-w>l <C-\><C-n><C-w>l

" Coc settings
" Give more space for displaying messages.
set cmdheight=2
" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)


augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp') augroup end

  let g:ayucolor="mirage"


au BufWrite *.py call CocActionAsync('format')
