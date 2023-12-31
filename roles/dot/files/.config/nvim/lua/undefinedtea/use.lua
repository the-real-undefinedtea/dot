return {
  -- language
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    dependencies = {
      {'neovim/nvim-lspconfig'},
      {
        'williamboman/mason.nvim',
        build = function()
          pcall(vim.cmd, 'MasonUpdate')
        end
      },
      {'williamboman/mason-lspconfig.nvim'},

      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'}
    }
  },

  -- essential
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
    -- or                          , branch = '0.1.1',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },
  {
    'nvim-treesitter/nvim-treesitter',
    build = function()
      require('nvim-treesitter.install').update({ with_sync = true })
    end
  },
  {
    'mbbill/undotree',
    keys = {
      { '<Leader>u', vim.cmd.UndotreeToggle, silent = true }
    }
  },

  -- neat
  {
    'theprimeagen/harpoon',
    keys = {
      { '<leader>a', '<cmd>lua require(\'harpoon.mark\').add_file()<CR>' },
      { '<C-e>', '<cmd>lua require(\'harpoon.ui\').toggle_quick_menu()<CR>' },
      { '<C-t>', '<cmd>lua require(\'harpoon.ui\').nav_file(1)<CR>' },
      { '<C-n>', '<cmd>lua require(\'harpoon.ui\').nav_file(2)<CR>' },
      { '<C-s>', '<cmd>lua require(\'harpoon.ui\').nav_file(3)<CR>' }
    }
  },

  'tpope/vim-commentary',
  'tpope/vim-surround',
  'tpope/vim-fugitive',

  'airblade/vim-gitgutter',

  'folke/zen-mode.nvim',

  -- unfortunate
  {
    'laytan/cloak.nvim',
    config = function()
      require('cloak').setup {
        enabled = true,
        cloak_character = '*',
        highlight_group = 'comment',

        patterns = {
          {
            file_pattern = { '.env*' },
            cloak_pattern = '=.*'
          }
        }
      }
    end
  },
  'tpope/vim-vinegar',
  'nvim-lualine/lualine.nvim',

  'github/copilot.vim',

  -- visual
  {
    'catppuccin/nvim',
    priority = 1000,
    config = function()
      require('catppuccin').setup {
      }
      -- vim.cmd('colorscheme catppuccin-mocha')
    end
  },

  {
    'olivercederborg/poimandres.nvim',
    priority = 1000,
    config = function()
      require('poimandres').setup {
      }
      -- vim.cmd('colorscheme poimandres')
    end
  },

  {
    'folke/tokyonight.nvim',
    priority = 1000,
    config = function()
      require('tokyonight').setup {
      }
      -- vim.cmd('colorscheme tokyonight-storm')
    end
  },

  {
    'mofiqul/dracula.nvim',
    priority = 1000,
    config = function()
      require('dracula').setup {
      }
      vim.cmd('colorscheme dracula')
    end
  }
}
