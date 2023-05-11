vim.keymap.set('n', '<leader>zz', function()
  require('zen-mode').setup {
    width = 90,
    height = 1,
    options = {
    }
  }
  require('zen-mode').toggle()
end )
