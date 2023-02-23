-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"



local servers = {
  "html",
  "cssls",
  "clangd",
  "gopls",
  "emmet_ls",
  "pyright",
  "bashls",
  "jsonls",
  "sqls",
  "yamlls",
  "dockerls",
  "marksman",
}




for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
