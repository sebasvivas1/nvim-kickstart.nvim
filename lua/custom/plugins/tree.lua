return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = false,
      window = {
        position = 'left',
      },
      filesystem = {
        follow_current_file = {
          enabled = true, -- This will find and focus the file in the active buffer every time
        },
      },
      event_handlers = {
        -- Auto close when open a file
        {
          event = 'file_opened',
          handler = function()
            require('neo-tree').close_all()
          end,
        },
      },
    }

    -- Keymap for open and close file explorer
    vim.keymap.set('n', '<leader>nt', ':Neotree toggle<CR>', { desc = 'Toggle file explorer' })
  end,
}
