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

function on_attach_callback(client, bufnr)
  -- If you use completion-nvim/diagnostic-nvim, uncomment those two lines.
  -- require('diagnostic').on_attach()
  -- require('completion').on_attach()
  require('folding').on_attach()
end


local servers = require'lspinstall'.installed_servers()
for _, server in pairs(servers) do
  require'lspconfig'[server].setup{
      capabilities = capabilities,
      on_attach = on_attach_callback,
  }
end
