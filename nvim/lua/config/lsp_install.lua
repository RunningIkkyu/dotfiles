require'lspinstall'.setup() -- important


-- Enable snippet
-- https://github.com/hrsh7th/nvim-compe#how-to-use-lsp-snippet
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
capabilities.textDocument.completion.completionItem.resolveSupport = {
  properties = {
    'documentation',
    'detail',
    'additionalTextEdits',
  }
}


local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  require'lspconfig'[server].setup{
      capabilities = capabilities,
  }
end
