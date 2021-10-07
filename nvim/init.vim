call plug#begin('~/.vim/plugged') " Code completion.

  " Plug vim plug instead, packer cannot install plugin headless.
  " Plug 'wbthomason/packer.nvim'

  " ------------------------- Lsp related --------------------------------------
  " Plug 'nvim-lua/completion-nvim'
  "
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate' }
  Plug 'hrsh7th/nvim-compe'
  Plug 'hrsh7th/vim-vsnip-integ'
  Plug 'rafamadriz/friendly-snippets'
  Plug 'hrsh7th/vim-vsnip'
  Plug 'neovim/nvim-lspconfig'
  Plug 'glepnir/lspsaga.nvim'      "better lsp UI
  Plug 'folke/lsp-colors.nvim'     "lsp color
  Plug 'ray-x/lsp_signature.nvim'  "Show function signature
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'kabouzeid/nvim-lspinstall' "install language server automatically.
  Plug 'ojroques/nvim-bufdel'      "better buffer delection
  Plug 'crispgm/nvim-go'           "Golang development plugin
  Plug 'sbdchd/neoformat'          "✨A (Neo)vim plugin for formatting code.

  " ------------------------- Tools & Improvements -----------------------------
  Plug 'APZelos/blamer.nvim'            "A git blame plugin for (neo)vim
  Plug 'mbbill/undotree'                "The undo history visualizer for VIM 
  Plug 'TimUntersberger/neogit'         "magit for neovim
  "Plug 'TaDaa/vimade'                  "fades your inactive buffers..
  "Plug 'liuchengxu/vista.vim'          "View and search LSP symbols, tags.
  "Plug 'othree/eregex.vim'             "Better regex
  "Plug 'preservim/nerdcommenter'       "Quick comment
  "Plug 'sheerun/vim-polyglot'
  "Plug 'windwp/nvim-autopairs'
  "Plug 'yuttie/comfortable-motion.vim' "smooth scrolling
  "Plug 'kevinhwang91/nvim-hlslens'     "hightlinght search length
  "Plug 'kdav5758/TrueZen.nvim'         "forcus, minimize
  "Plug 'wfxr/minimap.vim'              "nvim minimap
  Plug 'junegunn/vim-easy-align'      "Easy align
  Plug 'andymass/vim-matchup'          "better matchup
  Plug 'norcalli/nvim-colorizer.lua'   "Show color for color code.
  Plug 'onsails/lspkind-nvim'          "vscode-like pictograms
  Plug 'tpope/vim-fugitive'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'gyim/vim-boxdraw'
  Plug 'karb94/neoscroll.nvim'         "smooth scrolling
  Plug 'b3nj5m1n/kommentary'           "Comment text in and out
  Plug 'tpope/vim-surround'            "Vim surrond
  Plug 'terryma/vim-multiple-cursors'  "Multiple cursor
  Plug 'junegunn/fzf.vim'
  Plug 'junegunn/fzf', {'do': { -> fzf#install() }}
  Plug 't9md/vim-quickhl'              "quick hightlight works
  Plug 'akinsho/nvim-toggleterm.lua'   "controll nvim terminal better.
  Plug 'AndrewRadev/linediff.vim'      "line diff
  Plug 'samoshkin/vim-mergetool'       "vim merge tools
  Plug 'chrisbra/NrrwRgn'              "open selected region in a split windows.
  Plug 'dstein64/nvim-scrollview'      "scrollbar, use nvim popup
  Plug 'sindrets/diffview.nvim'        "git diff
  Plug 'tversteeg/registers.nvim'      "show nvim register
  Plug 'folke/which-key.nvim'          "show which key
  Plug 'ap/vim-css-color'              "Preview colors
  Plug 'phaazon/hop.nvim'              "Easy motion for neovim
  Plug 'nacro90/numb.nvim'             "Preview buffer when user :{number}
  Plug 'godlygeek/tabular'             "Align things quickly"
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  Plug 'kdheepak/lazygit.nvim'         "lazygit intergration. Require: lazygit




  "---------------------------- Apperance -------------------------------------
  "Colorscheme
  "Plug 'morhetz/gruvbox'
  " Plug 'glepnir/oceanic-material'
  " Plug 'arcticicestudio/nord-vim'
  " Plug 'mhartington/oceanic-next'
  Plug 'sainnhe/gruvbox-material'

  "Others
  "Plug 'romgrk/barbar.nvim'           "Tabs, as understood by any other editor.
  Plug 'akinsho/nvim-bufferline.lua'   "top buffer, tabs.
  
  Plug 'yamatsum/nvim-cursorline'     "ruler, performance bad
  Plug 'edluffy/specs.nvim'           "show cursor position, performance bad
  Plug 'kosayoda/nvim-lightbulb'       "VSCode bulb for neovim's built-in LSP.
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'p00f/nvim-ts-rainbow'          "rainbow
  Plug 'xiyaowong/nvim-cursorword'     "Underlines the word under the cursor.
  Plug 'glepnir/galaxyline.nvim'       "statusline. 
  Plug 'glepnir/dashboard-nvim'        "Startup dashboard


call plug#end()

" =============================== auto install plugin =================================
" autocmd VimEnter *
  "\  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  "\|   PlugInstall --sync | q
  "\| endif



" ========================== Common configurations =========================
syntax on
set completeopt=menuone,noselect
set noswapfile
set cursorline
set termguicolors
set clipboard+=unnamedplus
set updatetime=300
set signcolumn=yes
set colorcolumn=130
set inccommand=nosplit       "increase command
set maxmempattern=500000     " get rid of 'exceed maxmempattern error'
set number
set relativenumber
set laststatus=2
set expandtab       " Always use spaces instead of tabs.
set tabstop=4       " Tab width after characters. 
set shiftwidth=4    " Tab stop before characters.
set encoding=UTF-8
set ignorecase
set smartcase

" Now use nvim-go instead.
"autocmd BufWrite *.go lua vim.lsp.buf.formatting()
"au BufWritePre *.go %!goimports %<CR>:w<CR>

" replace selected string
vnoremap <F4> y:%s/<C-R>=escape(@",'/\')<CR>/<C-R>=escape(@",'/\')<CR>/g<Left><Left>

" rename current word  <F3>
" map <F3> <Esc>:%s/\<<c-r><c-w>\>/<c-r><c-w>/g<Left><Left>

" fzf.vim
nmap <silent> <C-p> <Esc>:FZF<CR>
nmap <silent> <M-p> <Esc>:Rg<CR>
nmap <silent> <Space>bl <Esc>:BLines<CR>
nmap <silent> <Space>bt <Esc>:BTags<CR>
nmap <silent> <Space>m <Esc>:Marks<CR>

" map // to search selection
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>

" quick add quota to a word.
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel

" remove lines contain selected contents. <learder> d
vnoremap <silent> <leader>d y:g/\V<C-R>=escape(@",'/\')<CR>/d<CR>

" map F9 to search current word without moving cursor
nnoremap <F9> :let @/='\<<C-R>=expand("<cword>")<CR>\>'<CR>:set hls<CR>

" search words <learder> /
"nnoremap <leader>/ /\<\><left><left>
" quick next diffget
nnoremap <silent> <leader>dg ]c:diffget<CR>

" quick diffget
nnoremap <silent> dg :diffget<CR>

" better navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

set clipboard+=unnamedplus

colorscheme gruvbox-material

"use [[ / ]] to goto previous/next function
lua <<EOF
function search_function_previous()
    vim.api.nvim_command(":noh")
    if vim.bo.filetype=="go" then
        vim.api.nvim_command("?func .*(")
    elseif  vim.bo.filetype == "py" then
        vim.api.nvim_command("?def \\w*")
    end
    vim.api.nvim_command("let @/ = ''")
    vim.api.nvim_command("set hlsearch")
end

function search_function_next()
    vim.api.nvim_command(":noh")
    if vim.bo.filetype=="go" then
        vim.api.nvim_command("/func .*(")
    elseif  vim.bo.filetype == "py" then
        vim.api.nvim_command("/def \\w*")
    end
    vim.api.nvim_command("let @/ = ''")
    vim.api.nvim_command("set hlsearch")
end

vim.api.nvim_set_keymap("n", "[[", ":lua search_function_previous()<CR>", {silent=true})
vim.api.nvim_set_keymap("n", "]]", ":lua search_function_next()<CR>", {silent=true})

EOF
" ===============================  Nvimtree ====================
"

"lua <<EOF
" local g = vim.g
" 
" vim.o.termguicolors = true
" 
" g.nvim_tree_side = "left"
" g.nvim_tree_width = '15%'
" g.nvim_tree_ignore = {".git", "node_modules", ".cache"}
" g.nvim_tree_auto_open = 0
" g.nvim_tree_auto_close = 0
" g.nvim_tree_quit_on_open = 0
" g.nvim_tree_follow = 1
" g.nvim_tree_indent_markers = 1
" g.nvim_tree_hide_dotfiles = 1
" g.nvim_tree_git_hl = 1
" g.nvim_tree_root_folder_modifier = ":t"
" g.nvim_tree_tab_open = 0
" g.nvim_tree_allow_resize = 1
" 
" g.nvim_tree_show_icons = {
"     git = 1,
"     folders = 1,
"     files = 1
" }
" --vim.g.mapleader = " "
" 
" EOF

nnoremap <space>n :NvimTreeToggle<CR>


" ================================== Terminal mode ======================
augroup Terminal
    autocmd!
    au TermOpen * tnoremap <buffer> <Esc><Esc> <c-\><c-n>
    au TermOpen * set nonu
augroup end


" ============================== Status line ====================
lua <<EOF

local gl = require("galaxyline")
local gls = gl.section

gl.short_line_list = {" "}

local colors = {
    bg = "#3c3c3c",
    fg = "#ebdbb2",
    green = "#b8bb26",
    red = "#d79921",
    lightbg = "#504945",
    lightbg2 = "#665c54",
    blue = "#d79921",
    yellow = "#d79921",
    grep = "#ebdbb2",
}

gls.left[2] = {
    statusIcon = {
        provider = function()
            return "   "
        end,
        highlight = {colors.bg, colors.blue},
        separator = "  ",
        separator_highlight = {colors.blue, colors.lightbg}
    }
}

gls.left[3] = {
    FileIcon = {
        provider = "FileIcon",
        condition = buffer_not_empty,
        highlight = {colors.fg, colors.lightbg}
    }
}

gls.left[4] = {
    FileName = {
        provider = {"FileName"},
        condition = buffer_not_empty,
        highlight = {colors.fg, colors.lightbg},
        separator = " ",
        separator_highlight = {colors.lightbg, colors.lightbg2}
    }
}

gls.left[5] = {
    current_dir = {
        provider = function()
            local dir_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":t")
            return "  " .. dir_name .. " "
        end,
        highlight = {colors.grey, colors.lightbg2},
        separator = " ",
        separator_highlight = {colors.lightbg2, colors.bg}
    }
}

local checkwidth = function()
    local squeeze_width = vim.fn.winwidth(0) / 2
    if squeeze_width > 30 then
        return true
    end
    return false
end

gls.left[6] = {
    DiffAdd = {
        provider = "DiffAdd",
        condition = checkwidth,
        icon = "  ",
        highlight = {colors.fg, colors.bg}
    }
}

gls.left[7] = {
    DiffModified = {
        provider = "DiffModified",
        condition = checkwidth,
        icon = "   ",
        highlight = {colors.grey, colors.bg}
    }
}

gls.left[8] = {
    DiffRemove = {
        provider = "DiffRemove",
        condition = checkwidth,
        icon = "  ",
        highlight = {colors.grey, colors.bg}
    }
}

gls.left[9] = {
    DiagnosticError = {
        provider = "DiagnosticError",
        icon = "  ",
        highlight = {colors.red, colors.bg}
    }
}

gls.left[10] = {
    DiagnosticWarn = {
        provider = "DiagnosticWarn",
        icon = "  ",
        highlight = {colors.yellow, colors.bg}
    }
}

gls.right[1] = {
    GitIcon = {
        provider = function()
            return " "
        end,
        condition = require("galaxyline.provider_vcs").check_git_workspace,
        highlight = {colors.grey, colors.lightbg},
        separator = "",
        separator_highlight = {colors.lightbg, colors.bg}
    }
}

gls.right[2] = {
    GitBranch = {
        provider = "GitBranch",
        condition = require("galaxyline.provider_vcs").check_git_workspace,
        highlight = {colors.grey, colors.lightbg}
    }
}

gls.right[3] = {
    viMode_icon = {
        provider = function()
            return " "
        end,
        highlight = {colors.bg, colors.red},
        separator = " ",
        separator_highlight = {colors.red, colors.lightbg}
    }
}

gls.right[4] = {
    ViMode = {
        provider = function()
            local alias = {
                n = "Normal",
                i = "Insert",
                c = "Command",
                V = "Visual",
                [""] = "Visual",
                v = "Visual",
                R = "Replace"
            }
            local current_Mode = alias[vim.fn.mode()]

            if current_Mode == nil then
                return "  Terminal "
            else
                return "  " .. current_Mode .. " "
            end
        end,
        highlight = {colors.red, colors.lightbg}
    }
}

gls.right[5] = {
    time_icon = {
        provider = function()
            return " "
        end,
        separator = "",
        separator_highlight = {colors.green, colors.lightbg},
        highlight = {colors.lightbg, colors.green}
    }
}

gls.right[6] = {
    time = {
        provider = function()
            return "  " .. os.date("%H:%M") .. " "
        end,
        highlight = {colors.green, colors.lightbg}
    }
}

EOF

" =================================== top buffer line ===================
"
lua <<EOF

local bar_fg = "#928374"
local activeBuffer_fg = "#ebdbb2"

require "bufferline".setup {
    options = {
        -- offsets = {{filetype = "NvimTree", text = ""}},
        offsets = {{filetype = "NvimTree", text = "File Explorer", text_align = "left"}},
        buffer_close_icon = "",
        diagnostics = "nvim_lsp",
        modified_icon = "",
        close_icon = " ",
        left_trunc_marker = "",
        right_trunc_marker = "",
        max_name_length = 14,
        max_prefix_length = 13,
        tab_size = 20,
        show_tab_indicators = true,
        enforce_regular_tabs = false,
        view = "multiwindow",
        show_buffer_close_icons = true,
        --separator_style = "thin",
        separator_style = "slant",
    },
}

local opt = {silent = true}
local map = vim.api.nvim_set_keymap
-- vim.g.mapleader = " "

-- MAPPINGS
map("n", "<S-t>", [[<Cmd>tabnew<CR>]], opt) -- new tab

-- move between tabs
map("n", ")", [[<Cmd>BufferLineCycleNext<CR>]], opt)
map("n", "(", [[<Cmd>BufferLineCyclePrev<CR>]], opt)

EOF

" ========================== Telescope ==============================
lua <<EOF
require("telescope").setup {}

-- require("telescope").load_extension("media_files")

-- local opt = {noremap = true, silent = true}

vim.api.nvim_set_keymap( "n", "<leader>fg", ":Telescope live_grep <CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap( "n", "<leader>ff", ":Telescope find_files <CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap( "n", "<leader>gr", ":Telescope lsp_references <CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap( "n", "<leader>fc", ":Telescope current_buffer_fuzzy_find <CR>", {noremap = true, silent = true})
-- Tag releated.
vim.api.nvim_set_keymap( "n", "<leader>tw", ":Telescope lsp_dynamic_workspace_symbols <CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap( "n", "<leader>tc", ":Telescope lsp_document_symbols <CR>", {noremap = true, silent = true})

-- vim.g.mapleader = " "

EOF

" ========================================== lspconfig =================
lua <<EOF

function on_attach(client, bufnr)
    local function buf_set_keymap(...)
        vim.api.nvim_buf_set_keymap(bufnr, ...)
    end
    local function buf_set_option(...)
        vim.api.nvim_buf_set_option(bufnr, ...)
    end

    buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

    -- Mappings.
    local opts = {noremap = true, silent = true}

    -- Set some keybinds conditional on server capabilities
    if client.resolved_capabilities.document_formatting then
        buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
    elseif client.resolved_capabilities.document_range_formatting then
        buf_set_keymap("n", "<space>f", "<cmd>lua vim.lsp.buf.range_formatting()<CR>", opts)
    end
end

-- lspInstall + lspconfig stuff

-- open snippet
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}

local function setup_servers()
    require "lspinstall".setup()

    local lspconf = require("lspconfig")
    local servers = require "lspinstall".installed_servers()

    for _, lang in pairs(servers) do
        if lang ~= "lua" then
            lspconf[lang].setup {
                on_attach = on_attach,
                capabilities = capabilities, -- open sinppet
                --root_dir = vim.loop.cwd
            }
        elseif lang == "lua" then
            lspconf[lang].setup {
                root_dir = function()
                    return vim.loop.cwd()
                end,
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = {"vim"}
                        },
                        workspace = {
                            library = {
                                [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                                [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true
                            }
                        },
                        telemetry = {
                            enable = false
                        }
                    }
                }
            }
        end
    end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require "lspinstall".post_install_hook = function()
    setup_servers() -- reload installed servers
    vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end

-- replace the default lsp diagnostic letters with prettier symbols
vim.fn.sign_define("LspDiagnosticsSignError", {text = "", numhl = "LspDiagnosticsDefaultError"})
vim.fn.sign_define("LspDiagnosticsSignWarning", {text = "", numhl = "LspDiagnosticsDefaultWarning"})
vim.fn.sign_define("LspDiagnosticsSignInformation", {text = "", numhl = "LspDiagnosticsDefaultInformation"})
vim.fn.sign_define("LspDiagnosticsSignHint", {text = "", numhl = "LspDiagnosticsDefaultHint"})

-- lsp.gopls.setup{on_attach=completion.on_attach}
-- require'completion'.on_attach()
-- require'lspconfig'.pyright.setup{}
-- require'lspconfig'.gopls.setup{}

EOF

nnoremap  <silent> gD         :lua vim.lsp.buf.declaration()<CR>
nnoremap  <silent> gd         :lua vim.lsp.buf.definition()<CR>
nnoremap  <silent> <leader>ga         :lua vim.lsp.buf.code_action()<CR>
nnoremap  <silent> K          :lua vim.lsp.buf.hover()<CR>
"nnoremap  <silent> K          :Lspsaga hover_doc<CR>
nnoremap  <silent> gi         :lua vim.lsp.buf.implementation()<CR>
" nnoremap  <silent> <C-k>      :lua vim.lsp.buf.signature_help()<CR>    "-- clash with c-k move
nnoremap  <silent> <leader>wa :lua vim.lsp.buf.add_workspace_folder()<CR>
nnoremap  <silent> <leader>wr :lua vim.lsp.buf.remove_workspace_folder()<CR>
nnoremap  <silent> <leader>wl :lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>
nnoremap  <silent> <leader>D  :lua vim.lsp.buf.type_definition()<CR>
nnoremap  <silent> <leader>rn :lua vim.lsp.buf.rename()<CR>
nnoremap  <silent> gr         :lua vim.lsp.buf.references()<CR>
nnoremap  <silent> <leader>e   :lua vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap  <silent> [d         :lua vim.lsp.diagnostic.goto_prev()<CR>
nnoremap  <silent> ]d         :lua vim.lsp.diagnostic.goto_next()<CR>
nnoremap  <silent> <leader>q   :lua vim.lsp.diagnostic.set_loclist()<CR>


" ==================== indent line ============================
lua <<EOF

-- vim.g.indent_blankline_char = '│'
vim.g.indent_blankline_char = "▏"
vim.g.indentLine_enabled = 1
vim.g.indent_blankline_filetype_exclude = {"help", "terminal", "dashboard"}
vim.g.indent_blankline_buftype_exclude = {"terminal"}
vim.g.indent_blankline_show_trailing_blankline_indent = false
vim.g.indent_blankline_show_first_indent_level = false

EOF


" ======================== neoscroll ======================
lua require('neoscroll').setup()


" ======================== vsnip ================================
" NOTE: You can use other key to expand snippet.

" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)

" If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.javascriptreact = ['javascript']
let g:vsnip_filetypes.typescriptreact = ['typescript']


" ======================== nvim-compe ======================
lua <<EOF
vim.o.completeopt = "menuone,noselect"

require "compe".setup {
    enabled = true,
    autocomplete = true,
    debug = false,
    min_length = 1,
    preselect = "enable",
    throttle_time = 80,
    source_timeout = 200,
    incomplete_delay = 400,
    max_abbr_width = 100,
    max_kind_width = 100,
    max_menu_width = 100,
    documentation = true,
    source = {
        buffer = {kind = "﬘", true},
        vsnip = {kind = "﬌"}, --replace to what sign you prefer
        path = {kind= "⌹"},
        nvim_lsp = true
    }
}

--require'lspconfig'.gopls.setup{}

local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local check_back_space = function()
    local col = vim.fn.col(".") - 1
    if col == 0 or vim.fn.getline("."):sub(col, col):match("%s") then
        return true
    else
        return false
    end
end

-- tab completion

-- _G.tab_complete = function()
--     if vim.fn.pumvisible() == 1 then
--         return t "<C-n>"
--     elseif check_back_space() then
--         return t "<Tab>"
--     else
--         return vim.fn["compe#complete"]()
--     end
-- end
-- _G.s_tab_complete = function()
--     if vim.fn.pumvisible() == 1 then
--         return t "<C-p>"
--     elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
--         return t "<Plug>(vsnip-jump-prev)"
--     else
--         return t "<S-Tab>"
--     end
-- end

--  mappings


vim.api.nvim_set_keymap("i", "<c-n>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<c-n>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<c-p>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<c-p>", "v:lua.s_tab_complete()", {expr = true})

function _G.completions()
    local npairs = require("nvim-autopairs")
    if vim.fn.pumvisible() == 1 then
        if vim.fn.complete_info()["selected"] ~= -1 then
            return vim.fn["compe#confirm"]("<CR>")
        end
    end
    return npairs.check_break_line_char()
end

--vim.api.nvim_set_keymap("i", "<CR>", "v:lua.completions()", {expr = true})
EOF

inoremap <silent><expr> <CR>  compe#confirm('<CR>')

" =========================== Easy align ===================================
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" =============================== hop.nvim =================================
lua require'hop'.setup()
"nnoremap <M-i> :HopChar1<CR>
nnoremap <space>j :HopChar2<CR>
nnoremap <space>l :HopLine<CR>
" ============================== Bufdel ====================================
nnoremap <M-w> :BufDel<CR>
" ============================== toggleterm ====================================
nnoremap <C-\> :ToggleTerm<CR>

" ============================== Merge tools =================================
"set g:mergetool_layout = 'mr'
nmap <leader>mt <plug>(MergetoolToggle)

nmap <expr> <leader>mh &diff? '<Plug>(MergetoolDiffExchangeLeft)' : '<C-Left>'
nmap <expr> <leader>ml &diff? '<Plug>(MergetoolDiffExchangeRight)' : '<C-Right>'
nmap <expr> <leader>mj &diff? '<Plug>(MergetoolDiffExchangeDown)' : '<C-Down>'
nmap <expr> <leader>mk &diff? '<Plug>(MergetoolDiffExchangeUp)' : '<C-Up>'

" If you get "Conflict markers miss common base revision" error message, put
" the following in your ~/.gitconfig to use diff3 conflict style as a default:

" [merge]
" conflictStyle = diff3
"
" If something goes absolutely wrong, you can always reset conflict markers in
" a file to their initial state. It's safe to do it only during ongoing merge,
" otherwise you'd overwrite file in a working tree with version from index.
" 
" git checkout --conflict=diff3 {file}

"  ========================= nvim-treesitter ==============================
"
lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { "c", "rust" },  -- list of language that will be disabled
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
  rainbow = {
    enable = false,
    -- extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
    --max_file_lines = 1000, -- Do not enable for files with more than 1000 lines, int
  }
}
EOF

"  ========================= gitsign ==============================
"
lua <<EOF
require('gitsigns').setup {}
EOF

"  ========================= colorizer ==============================
lua require'colorizer'.setup()

"  ========================= git blamer ==============================
let g:blamer_enabled = 1
let g:blamer_delay = 500
let g:blamer_show_in_visual_modes = 0
highlight Blamer ctermfg=439 guifg=#5a524c

" vim-vsnip
imap <expr> <C-f>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-f>'
smap <expr> <C-f>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-f>'

" ========================== vista ==================================
"
nnoremap <leader>tv :Vista nvim_lsp<CR>
function! NearestMethodOrFunction() abort
  return get(b:, 'vista_nearest_method_or_function', '')
endfunction

set statusline+=%{NearestMethodOrFunction()}

" By default vista.vim never run if you don't call it explicitly.
"
" If you want to show the nearest function in your statusline automatically,
" you can add the following line to your vimrc
"autocmd VimEnter * call vista#RunForNearestMethodOrFunction()

" ========================== dashboard nvim ==================================
let g:dashboard_default_executive ='fzf'

" ========================== numb.nvim ==================================
"
lua <<EOF
require('numb').setup()
EOF

" ========================== nvim-go ==================================
"
lua <<EOF
require('go').setup{
     auto_format = true,
     auto_lint = false,
     linter = 'golangci-lint',
}

-- Defualt config
-- require('go').setup{
--     -- auto commands
--     auto_format = true,
--     auto_lint = true,
--     -- linters: revive, errcheck, staticcheck, golangci-lint
--     linter = 'revive',
--     -- lint_prompt_style: qf (quickfix), vt (virtual text)
--     lint_prompt_style = 'qf',
--     -- formatter: goimports, gofmt, gofumpt
--     formatter = 'goimports',
--     -- test flags: -count=1 will disable cache
--     test_flags = {'-v'},
--     test_timeout = '30s',
--     test_env = {},
--     -- show test result with popup window
--     test_popup = true,
--     test_popup_width = 80,
--     test_popup_height = 10,
--     -- test open
--     test_open_cmd = 'edit',
--     -- struct tags
--     tags_name = 'json',
--     tags_options = {'json=omitempty'},
--     tags_transform = 'snakecase',
--     tags_flags = {'-skip-unexported'},
--     -- quick type
--     quick_type_flags = {'--just-types'},
-- }
-- 
EOF
" ========================== neogit ===================================
"
lua <<EOF
require('neogit').setup{}
EOF
