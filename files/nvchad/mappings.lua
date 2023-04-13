local M = {}

-- Your custom mappings
M.custom = {
  n = {
    ["<C-k>"] = {
      function()
        vim.lsp.buf.format()
      end,
    },
    --search and replace word under cursor
    ["<C-r>"] = { ":%s/<C-r><C-w>//g<Left><Left>", "Replace word under cursor" },
    ["<C-d>"] = { "<ESC>^d$", "Delete whole line" },
    ["<C-;>"] = { ":m .-2<CR>==", "Move line up" },
    ["<A-Up>"] = { ":m .-2<CR>==", "Move line up" },
    ["<C-'>"] = { ":m .+1<CR>==", "Move line down" },
    ["<A-Down>"] = { ":m .+1<CR>==", "Move line down" },
    ["<C-o>"] = { ":Telescope find_files <CR>", "Find all files" },
    ["<C-p>"] = { ":Telescope git_files <CR>", "Find files added to Git" },
    ["<C-z>"] = { "<cmd> undo <CR>", "Undo" },
    ["<leader>gs"] = { ":Telescope git_status <CR>", "Git status" },
    ["<C-f>"] = { ":Telescope live_grep <CR>", "live grep" },
    ["<C-b>"] = { "<ESC>^i", "beginning of line" },
    ["<A-Left>"] = { "<ESC>^", "beginning of line" },
    ["<A-Right>"] = { "<End>", "end of line" },
    ["<C-e>"] = { "<End>", "end of line" },
    ["q"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "Close current buffer",
    },
  },

  v = {
    -- Move the block up and down
    ["<A-Up>"] = { ":m '<-2<CR>gv=gv", "Move block up" },
    ["<A-Down>"] = { ":m '>+1<CR>gv=gv", "Move line down" },
    ["<C-r>"] = { "y <ESC> :%s/<C-r><C-w>//g<Left><Left>" },
    -- replace whatever is selected in the Visual mode
  },

  i = {
    ["<A-Up>"] = { ":m .-2<CR>==", "Move line up" },
    ["<A-Down>"] = { ":m .+1<CR>==", "Move line down" },
    ["<A-Left>"] = { "<ESC>^i", "beginning of line" },
    ["<A-Right>"] = { "<End>", "end of line" },
  },
}

return M
