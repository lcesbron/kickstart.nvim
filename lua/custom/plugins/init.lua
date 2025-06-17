-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'kporceil/ftcountline.nvim',
    opts = {
      auto_update = true,
    },
    ft = 'c',
  },

  {
    'kporceil/42lyon-header.nvim',
    cmd = { 'Stdheader' },
    keys = { '<F1>' },
    opts = {
      default_map = true, -- Default mapping <F1> in normal mode.
      auto_update = true, -- Update header when saving.
      user = 'lcesbron', -- Your user.
      mail = 'lcesbron@student.42lyon.fr', -- Your mail.
      -- add other options.
    },
    config = function(_, opts)
      require('42header').setup(opts)
    end,
  },

  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { 'echasnovski/mini.icons', opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
    config = function()
      require('oil').setup()
      vim.keymap.set('n', '<leader>o', require('oil').open, { desc = 'Open parent directory' })
    end,
  },
}
