return {
  "akinsho/toggleterm.nvim",
  config = true,
  version = "*",
  cmd = "ToggleTerm",
  keys = { { "<C-t>", "<cmd>ToggleTerm<CR>", desc = "Toggle Terminal open" } },
  opts = {
    open_mapping = [[<C-t>]],
    terminal_mappings = true,
    insert_mappings = true,
  },
}
