vim.api.nvim_set_keymap("n", "gD", ":lua vim.lsp.buf.declaration()<CR>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "gr", ":lua vim.lsp.buf.references()<CR>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "gd", ":lua vim.lsp.buf.definition()<CR>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "gi", ":lua vim.lsp.buf.implementation()<CR>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "\\ga", ":lua vim.lsp.buf.code_action()<CR>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "K", ":lua vim.lsp.buf.hover()<CR>", { silent=true, noremap= true })
-- vim.api.nvim_set_keymap("n", "K", ":Lspsaga hover_doc<CR>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "\\wa", ":lua vim.lsp.buf.add_workspace_folder()<CR>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "\\wd", ":lua vim.lsp.buf.remove_workspace_folder()<CR>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "\\rn", ":lua vim.lsp.buf.rename()<CR>", { silent=true, noremap= true })
-- vim.api.nvim_set_keymap("n", "\\e", ":lua vim.lsp.diagnostic.show_line_diagnostics()<CR>", { silent=true, noremap= true })
-- vim.api.nvim_set_keymap("n", "]d", ":lua vim.lsp.diagnostic.goto_next()<CR>", { silent=true, noremap= true })
-- vim.api.nvim_set_keymap("n", "[d", ":lua vim.lsp.diagnostic.goto_prev()<CR>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "]d", ":Lspsaga diagnostic_jump_next<CR>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "[d", ":Lspsaga diagnostic_jump_prev<CR>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "\\e", ":Lspsaga show_line_diagnostics<CR>", { silent=true, noremap= true })


require("lspconfig").gopls.setup{
	on_attach = on_attach,
	cmd = { "gopls" },
	settings = {
		gopls = {
			analyses = {
				nilness = true,
				unusedparams = true,
				unusedwrite = true,
				useany = true,
			},
			experimentalPostfixCompletions = true,
			gofumpt = true,
			staticcheck = true,
			usePlaceholders = true,
		},
	},
}
-- require('lspconfig').golangci_lint_ls.setup{}
require('lspconfig').quick_lint_js.setup{}
require('lspconfig').tsserver.setup{}
require('lspconfig').html.setup{}
require('lspconfig').vuels.setup{}
require('lspconfig').vls.setup{}
require('lspconfig').pyright.setup{}
require('lspconfig').pylsp.setup{
  on_attach = on_attach,
  flags = {
    -- This will be the default in neovim 0.7+
    debounce_text_changes = 150,
  },
  settings = {
    -- configure plugins in pylsp
    pylsp = {
      plugins = {
        pyflakes = {enabled = false},
        pylint = {enabled = false},
        flake8 = {enabled = true},
      },
    },
  },
}
