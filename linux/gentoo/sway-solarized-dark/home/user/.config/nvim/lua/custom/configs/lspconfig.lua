local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")

lspconfig.gopls.setup({
  cmd = { "~/go/bin/gopls" },
  on_attach = on_attach,
  capabilities = capabilities,
})
