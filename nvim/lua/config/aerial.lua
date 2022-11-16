-- Set up your LSP clients here, using the aerial on_attach method
-- require("lspconfig").gopls.setup{
--   on_attach = require("aerial").on_attach,
-- }
-- Repeat this for each language server you have configured
require("lspconfig").jsonls.setup{
  on_attach = require("aerial").on_attach,
}
require("lspconfig").pyright.setup{
  on_attach = require("aerial").on_attach,
}
