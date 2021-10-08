-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/chenglongwang/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/chenglongwang/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/chenglongwang/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/chenglongwang/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/chenglongwang/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  NrrwRgn = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/NrrwRgn"
  },
  ["blamer.nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/blamer.nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  fzf = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf-lsp.nvim"] = {
    config = { 'require("config.fzf_lsp")' },
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/fzf-lsp.nvim"
  },
  ["fzf.vim"] = {
    config = { "require('config.fzf')" },
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["galaxyline.nvim"] = {
    config = { "require('config.galaxy_line')" },
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["go.nvim"] = {
    config = { 'require("config.go_nvim")' },
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/go.nvim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/gruvbox-material"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/hop.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  kommentary = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["linediff.vim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/linediff.vim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["mapx.nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/mapx.nvim"
  },
  ["markdown-preview.nvim"] = {
    config = { "require('config.markdown_preview')" },
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/markdown-preview.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/neoformat"
  },
  neogen = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/neogen"
  },
  neogit = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/neogit"
  },
  ["neoscroll.nvim"] = {
    config = { "require('config.neoscroll')" },
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/neoscroll.nvim"
  },
  ["numb.nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/numb.nvim"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-bufdel"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/nvim-bufdel"
  },
  ["nvim-bufferline.lua"] = {
    config = { "require('config.buffer_line')" },
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    config = { "require('config.nvim_compe')" },
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-cursorline"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/nvim-cursorline"
  },
  ["nvim-cursorword"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/nvim-cursorword"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    config = { "require('config.lsp_config')" },
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    config = { "require('config.lsp_install')" },
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-scrollview"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/nvim-scrollview"
  },
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "require('config.nvim_tree')" },
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { "require('config.treesitter')" },
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["registers.nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/registers.nvim"
  },
  ["specs.nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/specs.nvim"
  },
  tabular = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/tabular"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-boxdraw"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/vim-boxdraw"
  },
  ["vim-css-color"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/vim-css-color"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-mergetool"] = {
    config = { "require('config.merge_tool')" },
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/vim-mergetool"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors"
  },
  ["vim-quickhl"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/vim-quickhl"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/Users/chenglongwang/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
require('config.neoscroll')
time([[Config for neoscroll.nvim]], false)
-- Config for: nvim-lspinstall
time([[Config for nvim-lspinstall]], true)
require('config.lsp_install')
time([[Config for nvim-lspinstall]], false)
-- Config for: galaxyline.nvim
time([[Config for galaxyline.nvim]], true)
require('config.galaxy_line')
time([[Config for galaxyline.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
require('config.nvim_tree')
time([[Config for nvim-tree.lua]], false)
-- Config for: nvim-bufferline.lua
time([[Config for nvim-bufferline.lua]], true)
require('config.buffer_line')
time([[Config for nvim-bufferline.lua]], false)
-- Config for: go.nvim
time([[Config for go.nvim]], true)
require("config.go_nvim")
time([[Config for go.nvim]], false)
-- Config for: fzf.vim
time([[Config for fzf.vim]], true)
require('config.fzf')
time([[Config for fzf.vim]], false)
-- Config for: nvim-compe
time([[Config for nvim-compe]], true)
require('config.nvim_compe')
time([[Config for nvim-compe]], false)
-- Config for: vim-mergetool
time([[Config for vim-mergetool]], true)
require('config.merge_tool')
time([[Config for vim-mergetool]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require('config.treesitter')
time([[Config for nvim-treesitter]], false)
-- Config for: markdown-preview.nvim
time([[Config for markdown-preview.nvim]], true)
require('config.markdown_preview')
time([[Config for markdown-preview.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require('config.lsp_config')
time([[Config for nvim-lspconfig]], false)
-- Config for: fzf-lsp.nvim
time([[Config for fzf-lsp.nvim]], true)
require("config.fzf_lsp")
time([[Config for fzf-lsp.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
