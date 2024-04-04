return {
  "github/copilot.vim",
  config = function()
    vim.keymap.set('i', '<C-j>', 'copilot#Accept("\\<CR>")', {
      expr = true,
      replace_keycodes = false
    })
    vim.g.copilot_no_tab_map = true
    vim.g.copilot_node_command = "~/.nvm/versions/node/v18.15.0/bin/node"
  end,
}
