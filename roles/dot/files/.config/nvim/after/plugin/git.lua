vim.keymap.set('n', '<leader>g', vim.cmd.Git)

local undefined_git = vim.api.nvim_create_augroup('undefined_git', {})

local auto = vim.api.nvim_create_autocmd
auto('BufWinEnter', {
  group = undefined_git,
  pattern = '*',
  callback = function()
    if vim.bo.filetype ~= 'fugitive' then
      return
    end

    local buffer_ = vim.api.nvim_get_current_buf()

    local option_ = { buffer = buffer_, remap = false }

    vim.keymap.set('n', '<leader>p', function()
      vim.cmd.Git('push')
    end, option_)

    vim.keymap.set('n', '<leader>P', function()
      vim.cmd.Git('pull', '--rebase')
    end, option_)

    vim.keymap.set('n', '<leader>t', ':Git push -u origin ', option_)
  end
})
