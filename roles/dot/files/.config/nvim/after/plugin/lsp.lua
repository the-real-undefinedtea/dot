local lsp = require('lsp-zero')

lsp.on_attach(function(client, bufferuuid)
  local map_ = function(mode, key, action, description)
    if description then
      description = 'LSP: ' .. description
    end

    vim.keymap.set(mode, key, action, { buffer = bufferuuid, desc = description, remap = false })
  end

  lsp.default_keymaps({buffer = bufferuuid})

  map_('n', '<leader>ca', vim.lsp.buf.code_action, '[C]ode[A]ction')
  map_('i', '<C-h>', vim.lsp.buf.signature_help, 'Signature Documentation')
end)

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'tsserver',
    'svelte',
    'volar',
    'astro',
    'rust_analyzer',
    'lua_ls',
    'eslint',
    'tailwindcss'
  },
  handlers = {
    lsp.default_setup,
    lua_ls = function()
      require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
    end
  }
})

local cmp = require('cmp')
local cmp_format = require('lsp-zero').cmp_format()
local cmp_select = {
  behavior = cmp.SelectBehavior.Select
}

cmp.setup({
  formatting = cmp_format,
  mapping = {
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({select = false}),

    ['<C-Space>'] = cmp.mapping.complete(),

    ['<Tab>'] = nil
  }
})

require('luasnip/loaders/from_vscode').lazy_load()
