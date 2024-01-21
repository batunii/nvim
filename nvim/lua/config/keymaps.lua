local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = false }
--keymap("", "<Space>", "<Nop>", opts)
-- Better window navigation
keymap("n", "j", "k", opts)
keymap("n", "k", "j", opts)
keymap("n", "<C-Left>", "<C-w>h", opts)
keymap("n", "<C-Down>", "<C-w>j", opts)
keymap("n", "<C-Up>", "<C-w>k", opts)
keymap("n", "<C-Right>", "<C-w>l", opts)

-- Navigate buffers
keymap("n", "<S-Right>", ":bnext<CR>", opts)
keymap("n", "<S-Left>", ":bprevious<CR>", opts)

-- Resize with arrows
keymap("n", "<C-j>", ":resize +2<CR>", opts)
keymap("n", "<C-k>", ":resize -2<CR>", opts)
keymap("n", "<C-l>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-h>", ":vertical resize +2<CR>", opts)

-- Visual Mode
-- Indent the line
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-Down>", ":m .+1<CR>==", opts)
keymap("v", "<A-Up>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)
-- Visual Block --
-- Move text up and down
keymap("x", "K", ":move '>+1<CR>gv-gv", opts)
keymap("x", "J", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-Down>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-Up>", ":move '<-2<CR>gv-gv", opts)

require("neo-tree").setup({
  window = {
    mappings = {
      ["v"] = "open_vsplit",
      ["i"] = {
        function(state)
          local node = state.tree:get_node()
          print(node.path)
        end,
        desc = "print path",
      },
    },
  },
})