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
local package_path_str = "/home/ikkyu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/ikkyu/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/ikkyu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/ikkyu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/ikkyu/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/NrrwRgn"
  },
  ["blamer.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/blamer.nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/diffview.nvim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/friendly-snippets"
  },
  fzf = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/gruvbox-material"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/hop.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  kommentary = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["linediff.vim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/linediff.vim"
  },
  ["lsp-colors.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/lsp-colors.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["mapx.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/mapx.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/neoformat"
  },
  neogen = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/neogen"
  },
  neogit = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/neogit"
  },
  ["neoscroll.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/neoscroll.nvim"
  },
  ["numb.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/numb.nvim"
  },
  ["nvim-bqf"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/nvim-bqf"
  },
  ["nvim-bufdel"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/nvim-bufdel"
  },
  ["nvim-bufferline.lua"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/nvim-bufferline.lua"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-cursorline"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/nvim-cursorline"
  },
  ["nvim-cursorword"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/nvim-cursorword"
  },
  ["nvim-go"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/nvim-go"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-scrollview"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/nvim-scrollview"
  },
  ["nvim-toggleterm.lua"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/nvim-toggleterm.lua"
  },
  ["nvim-tree.lua"] = {
    config = { "require('config.nvim_tree')" },
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["registers.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/registers.nvim"
  },
  ["specs.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/specs.nvim"
  },
  tabular = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/tabular"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-boxdraw"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/vim-boxdraw"
  },
  ["vim-css-color"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/vim-css-color"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-mergetool"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/vim-mergetool"
  },
  ["vim-multiple-cursors"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/vim-multiple-cursors"
  },
  ["vim-quickhl"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/vim-quickhl"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/home/ikkyu/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
require('config.nvim_tree')
time([[Config for nvim-tree.lua]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
