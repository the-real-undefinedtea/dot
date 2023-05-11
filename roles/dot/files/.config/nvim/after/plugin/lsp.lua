local lsp = require('lsp-zero').preset('recommended')

lsp.ensure_installed({
  'tsserver',
  'svelte',
  'astro',
  'rust_analyzer',
  'lua_ls'
})

lsp.on_attach(function(client, bufferuuid)
  lsp.default_keymaps({buffer = bufferuuid})
end)

require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local cmp_select = {
  behavior = cmp.SelectBehavior.Select
}

cmp.setup({
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({select = false}),

    ['<C-Space>'] = cmp.mapping.complete(),

    ['<Tab>'] = nil
  }
})
