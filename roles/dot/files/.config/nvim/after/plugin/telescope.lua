local telescope = require('telescope')
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', function()
  builtin.find_files({
    hidden = true
  })
end)
vim.keymap.set('n', '<C-pf>', builtin.git_files)

telescope.load_extension 'file_browser'

vim.keymap.set('n', '<leader>p', function()
  telescope.extensions.file_browser.file_browser({
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = 'normal'
  })
end)
