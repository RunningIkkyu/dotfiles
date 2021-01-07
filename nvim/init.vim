" Install plugins.
" Specify a directory for plugins
call plug#begin('~/.vim/plugged') " Code completion.
"Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Adds file type icons to Vim plugins.
" Get a Nerd Font! or patch your own. Without this, things break
Plug 'ryanoasis/vim-devicons'

"" calc fibonacci sequences
Plug 'Olical/neofib', { 'do': 'bash install.sh' }

"Plug 'airblade/vim-gitgutter'
"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'tpope/vim-fugitive'

" Plugin offers tree view of files.
Plug 'preservim/nerdtree'
" Make NERDTree tabs more comfortable.
Plug 'jistr/vim-nerdtree-tabs'

" lind diff, diff block
Plug 'AndrewRadev/linediff.vim'

" vim goimports
Plug 'mattn/vim-goimports'

""Language Client
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }


" Fuzzy finder.
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" https://github.com/dense-analysis/ale
"Plug 'dense-analysis/ale'

" Beautify vim statsline.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Switch between windows quickly.
Plug 'christoomey/vim-tmux-navigator'

" colorscheme
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'
Plug 'glepnir/oceanic-material'
Plug 'arcticicestudio/nord-vim'
Plug 'mhartington/oceanic-next'

Plug 'sheerun/vim-polyglot'
"Plug 'nvim-treesitter/nvim-treesitter'
Plug 'HerringtonDarkholme/yats.vim' " TS Syntax

" Quick comment
Plug 'preservim/nerdcommenter' 

" Auto generate documentation.
Plug 'kkoomen/vim-doge'

" Easy align.
Plug 'junegunn/vim-easy-align'

" Rainbow bracket to make bracket more readable.
Plug 'luochen1990/rainbow'

" Bring smooth scrolling to vim.
Plug 'yuttie/comfortable-motion.vim'

" Efficient way of using Vim as a Git mergetool.
Plug 'samoshkin/vim-mergetool'


" rust plugin
Plug 'rust-lang/rust.vim'

" vim-go
"Plug 'fatih/vim-go' ", { 'do': ':GoUpdateBinaries' }

" vim-lsc  language server client
"Plug 'natebosch/vim-lsc'

" vim-lsp language server protocl
"Plug 'prabirshrestha/vim-lsp'
"Plug 'mattn/vim-lsp-settings'

" Tagbar
Plug 'majutsushi/tagbar'

" Vim surrond
Plug 'tpope/vim-surround'

" Vim fzf, need install fzf first.
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'

Plug 'Yggdroot/indentLine'

" Vim boxdraw, draw ascii graph
Plug 'gyim/vim-boxdraw'


""""""""""""""""""""""""Start Snipet plugin: ultisnips""""""""""""""""""""""""
" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'
"""""""""""""""""""""""" End Snipet plugin: ultisnips""""""""""""""""""""""""

" quick cscope
""Plug 'ronakg/quickr-cscope.vim'

" Jedi vim, go to definition.
" Plug 'davidhalter/jedi-vim'

" Multiple selection
"Plug 'terryma/vim-multiple-cursors'



call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" ale config 
let g:ale_linters = {
	\ 'go': ['gopls'],
	\}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Launch gopls when Go files are in use LanguageClient
let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'go': ['gopls'],
    \ 'c': ['clangd'],
    \ 'cpp': ['clangd'],
    \ }

"let g:LanguageClient_loadSettings = 1 " Use an absolute configuration path if you want system-wide settings
"let g:LanguageClient_settingsPath = '/home/YOUR_USERNAME/.config/nvim/settings.json'
" https://github.com/autozimu/LanguageClient-neovim/issues/379 LSP snippet is not supported
"let g:LanguageClient_hasSnippetSupport = 0
" Run gofmt on save

autocmd BufWritePre *.go :call LanguageClient#textDocument_formatting_sync()

function LC_maps()
  if has_key(g:LanguageClient_serverCommands, &filetype)
    nmap <buffer> <silent> K <Plug>(lcn-hover)
    nmap <buffer> <silent> gd <Plug>(lcn-definition)
    nmap <buffer> <silent> gr <Plug>(lcn-references)
    nmap <buffer> <silent> ga <Plug>(lcn-code-action)
    nmap <buffer> <silent> <leader>e :call LanguageClient#explainErrorAtPoint()<CR>
    nmap <buffer> <silent> gen <Plug>(lcn-diagnostics-next)
    nmap <buffer> <silent> geN <Plug>(lcn-diagnostics-prev)
    nmap <buffer> <silent> <F2> <Plug>(lcn-rename)

  endif
  "autocmd BufWritePost *.go call LanguageClient_textDocument_formatting_sync()
endfunction

autocmd FileType * call LC_maps()

let g:LanguageClient_preferredMarkupKind = ['plaintext']
let g:LanguageClient_hoverPreview = "Always"
let g:LanguageClient_useVirtualText = "No"
let g:LanguageClient_hideVirtualTextsOnInsert = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-go
"let g:go_imports_autosave = 1
"let g:go_doc_popup_window = 1
"let g:go_implements_mode = 'gopls'
"autocmd FileType go nnoremap <buffer> <silent> gr :GoReferrers<CR>

"let g:go_term_enabled = 1
"let g:go_term_mode = 'split'
"au FileType go nmap <Leader>ds <Plug>(go-def-split)
"au FileType go nmap <Leader>dv <Plug>(go-def-vertical)
"au FileType go nmap <Leader>dt <Plug>(go-def-tab)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" config for multiple cursors
"
"
"let g:multi_cursor_use_default_mapping=0

" Default mapping
"let g:multi_cursor_start_word_key      = '<C-m>'
"let g:multi_cursor_select_all_word_key = '<A-m>'
"let g:multi_cursor_start_key           = 'g<C-m>'
"let g:multi_cursor_select_all_key      = 'g<A-m>'
"let g:multi_cursor_next_key            = '<C-n>'
"let g:multi_cursor_prev_key            = '<C-p>'
"let g:multi_cursor_skip_key            = '<C-x>'
"let g:multi_cursor_quit_key            = '<Esc>'
"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Langauge server Protocla Plugin: vim-lsp
"let g:lsp_signs_enabled = 1         " enable signs
"let g:lsp_diagnostics_echo_cursor = 1 " enable echo under cursor when in normal mode

"""""""""""""""""""""""""""""""""ultisnips"""""""""""""""""""""""""""""""""""""""""""

" Code snippets. snip
" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
"let b:UltiSnipsSnippetDirectories=["/.vim/mysnippets", "~/.vim/mysnippets"]
let b:UltiSnipsSnippetDirectories=["~/.vim/mysnippets"]
let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Efficient way of using Vim as a Git mergetool.
"
let g:mergetool_layout = 'mr'
let g:mergetool_prefer_revision = 'local'
nmap <leader>mt <plug>(MergetoolToggle)

"Alternatively, you can start with local or unmodified revision, and change
"your mind later during merge process by running one of these commands:
"
"        :MergetoolPreferLocal
"        :MergetoolPreferRemote
"
nmap <expr> <C-M-h> &diff? '<Plug>(MergetoolDiffExchangeLeft)' : '<C-Left>'
nmap <expr> <C-M-l> &diff? '<Plug>(MergetoolDiffExchangeRight)' : '<C-Right>'
nmap <expr> <C-M-j> &diff? '<Plug>(MergetoolDiffExchangeDown)' : '<C-Down>'
nmap <expr> <C-M-k> &diff? '<Plug>(MergetoolDiffExchangeUp)' : '<C-Up>'


" View history revisions, and hide 'MERGED' file altogether
"let g:mergetool_layout = 'LBR'

" Default layout
"let g:mergetool_layout = 'mr'
" View 'base' revision on the left
let g:mergetool_layout = 'bmr'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""g
" qucik cscope
"let g:quickr_cscope_keymaps = 0
"nmap <C-s>c <plug>(quickr_cscope_callers)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Config for indent line
"
" ----------------------------------------------
" ===> indentLine will overwrite 'conceal' color with grey by default. If you want
" to highlight conceal color with your colorscheme, disable by:
"
" let g:indentLine_setColors = 0
"
"
" ----------------------------------------------
" ===> Or you can customize conceal color by:
"
" " Vim
"
"     let g:indentLine_color_term = 239

"" GVim

"     let g:indentLine_color_gui = '#A4E57E'
"
"" none X terminal
"
"     let g:indentLine_color_tty_light = 7 " (default: 4)
"     let g:indentLine_color_dark = 1 " (default: 2)

"" Background (Vim, GVim)
"
"     let g:indentLine_bgcolor_term = 202
"     let g:indentLine_bgcolor_gui = '#FF5F00'
"
"
" ----------------------------------------------
" ==> Change Indent Char
"
"       let g:indentLine_char = 'c'
"
" where 'c' can be any ASCII character. You can also use one of 
"     ¦, ┆, │, ⎸, ▏ 
" to display more beautiful lines. However, these characters will only work
" with files whose encoding is UTF-8.  or
"
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
"
" each indent level has a distinct character.

let g:indentLine_enabled = 1

"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-easy-align settings.
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Fzf settings.
let g:fzf_buffers_jump = 1
let g:fzf_tags_command = 'ctags -R'
let g:fzf_commands_expect = 'alt-enter,ctrl-x'


" nerdcommenter settings.
" Use <ctrl-/> to toggle comments in code.
nmap <C-_>   <Plug>NERDCommenterToggle
vmap <C-_>   <Plug>NERDCommenterToggle<CR>gv


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" doge settings.
" Choose one documentation style.
"let g:doge_doc_standard_python = 'numpy'
let g:doge_doc_standard_python = 'google'
" let g:doge_doc_standard_python = 'reST'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"fzf
"let g:fzf_layout = { 'left': '~70%' }
"let g:fzf_layout={'up': '70%'}

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" rainbow settings.
" Activate rainbow plugin.
let g:rainbow_active = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree settings

" open a NERDTree automatically when vim starts up if no files were specified
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Open file in new tab by default.
" let NERDTreeMapOpenInTab='<ENTER>'
let NERDTreeCustomOpenArgs={'file':{'where': 't'}}


" open NERDTree automatically when vim starts up on opening a directory
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" map a specific key or shortcut to open NERDTree
"map <C-n> :NERDTreeToggle<CR>
nnoremap <C-n> :NERDTreeToggle<CR>


" close vim if the only window left open is a NERDTree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Let NERDTree igonre files
let NERDTreeIgnore = ['\.pyc$', '\.swp$', '__pycache__$']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Status line, use `:help coc-status` to see more info.
"let g:airline#extensions#tabline#enabled = 1
"let airline#extensions#coc#error_symbol = ''
"let airline#extensions#coc#warning_symbol = '  '
"let g:airline_theme='badwolf'  "可以自定义主题，这里使用 badwolf
"" let g:lightline = {
" \ 'colorscheme': 'badwolf',
" \ 'active': {
" \   'left': [ [ 'mode', 'paste' ],
" \             [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
" \ },
" \ 'component_function': {
" \   'cocstatus': 'coc#status'
" \ },
" \ }
"set statusline^=%{StatusDiagnostic()}%{get(b:,'coc_current_function','')}

" autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar settings
nmap <F8> :TagbarToggle<CR>
" Do not auto preview tag.
let g:tagbar_autopreview=0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim fzf
" Always enable preview window on the right with 60% width
"let g:fzf_preview_window = 'right:60%'

" [Tags] Command to generate tags file
"let g:fzf_tags_command = 'ctags -R'

"" [[B]Commits] Customize the options used by 'git log':
"let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

"" [Commands] --expect expression for directly executing the command
"let g:fzf_commands_expect = 'alt-enter,ctrl-x'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" coc.vim settings.
" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? "\<C-n>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

"function! s:check_back_space() abort
  "let col = col('.') - 1
  "return !col || getline('.')[col - 1]  =~# '\s'
"endfunction


"" GoTo code navigation.
"nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
 

 "Remap for symbol renaming.
"nmap <F2> <Plug>(coc-rename)


 "Use `[g` and `]g` to navigate diagnostics
"nmap <silent> [g <Plug>(coc-diagnostic-prev)
"nmap <silent> ]g <Plug>(coc-diagnostic-next)

 "Use K to show documentation in preview window.
"nnoremap <silent> K :call <SID>show_documentation()<CR>

"function! s:show_documentation()
  "if (index(['vim','help'], &filetype) >= 0)
    "execute 'h '.expand('<cword>')
  "else
    "call CocAction('doHover')
  "endif
"endfunction


" Highlight the symbol and its references when holding the cursor.
"autocmd CursorHold * silent call CocActionAsync('highlight')


" Formatting selected code.
" Need install autopep8 first time running.
" Needless for me.
"xmap <leader>f  <Plug>(coc-format-selected)
"nmap <leader>f  <Plug>(coc-format-selected)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme gruvbox
"colorscheme gruvbox-material
"colorscheme oceanic_material
"colorscheme nord

" >>>>>>>>>>> Ocean next <<<<<<<<<<<
"colorscheme OceanicNext
"let g:airline_theme='oceanicnext'
"let g:oceanic_next_terminal_bold = 1
"let g:oceanic_next_terminal_italic = 1
" >>>>>>>>>>> Ocean next end<<<<<<<<<<<


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim Basic settings.
syntax enable
set cursorline
set termguicolors
set clipboard+=unnamedplus
set updatetime=300
set signcolumn=yes
set shell=/bin/bash
set nu
set relativenumber
set laststatus=2
set expandtab       " Always use spaces instead of tabs.
set tabstop=2       " Tab width after characters. 
set shiftwidth=4    " Tab stop before characters.
set encoding=UTF-8
" set max memory, for large project
set maxmempattern=8000000
filetype plugin on
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes
" Map b previous, b next, b delete.
"nmap <C-s> :Snippets<cr>
nmap gn :bn<cr>
nmap gp :bp<cr>
nmap gw :bw<cr>
" Rename variable
" TODO: improve regex, only match the word not characters.
map <F2> <Esc>:%s/<c-r><c-w>/<c-r><c-w>/g<Left><Left>
" map ctrl-p to Fuzzy finder
nmap <silent> <C-p> <Esc>:FZF<CR>
nmap <silent> <C-M-p> <Esc>:Rg<CR>

" Map // to search selection
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" Quick add quota to a word.
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
" map F9 to search current word without moving cursor
nnoremap <F9> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set clipboard+=unnamedplus
let g:clipboard = {
          \   'name': 'win32yank-wsl',
          \   'copy': {
          \      '+': 'win32yank.exe -i --crlf',
          \      '*': 'win32yank.exe -i --crlf',
          \    },
          \   'paste': {
          \      '+': 'win32yank.exe -o --lf',
          \      '*': 'win32yank.exe -o --lf',
          \   },
          \   'cache_enabled': 0,
          \ }

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"rust config
let g:syntastic_rust_checkers = ['cargo']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" center search result, same effect with nzz or Nzz
function! CenteredFindNext(forward)
    " save the current value for later restore
    let s:so_curr=&scrolloff
    set scrolloff=999
    try
        if a:forward
            silent normal! n
        else
            silent normal! N
        endif
    finally
        " restore no matter what
        let &scrolloff=s:so_curr
    endtry
endfunction

:nnoremap <silent>n :call CenteredFindNext(1)<CR>
nnoremap <silent>N :call CenteredFindNext(0)<CR>
