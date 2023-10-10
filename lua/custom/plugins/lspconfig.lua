local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local servers = {"html","tsserver","emmet_ls"}

for _, lsp in ipairs(servers) do

  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.emmet_ls.setup({
    filetypes = { "css", "jsx", "html", "javascript", "javascriptreact", "less", "sass", "scss", "typescriptreact", "vue" },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
})



return {}
