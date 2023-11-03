require("mason").setup()
require("mason-lspconfig").setup()

local cmp = require "cmp"
require("cmp").setup({
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
            cmp.select_next_item()
        else
            fallback()
        end
      end),
      ["<S-Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
            cmp.select_prev_item()
        else
            fallback()
        end
      end),
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
    }),
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig").pyright.setup({
    capabilities = capabilities,
})

require("lspconfig").lua_ls.setup({
    capabilities = capabilities,
})

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        update_in_insert = true
    }
)
