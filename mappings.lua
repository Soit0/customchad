local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>sv"] = { "<cmd> vs <CR>", "Vertical split" },
    ["<leader>ss"] = { "<cmd> sp <CR>", "Vertical split" },
    ["<leader>bx"] = { "<cmd> %bd|e#|bd#<cr>|'\"<CR> <cmd> only<CR>", "Close all buffers but this one" },
    ["<leader><Enter>"] = { "<cmd> noh <CR>", "Remove highlight" },
    ["H"] = { "^", "Go to line start" },
    ["L"] = { "$", "Go to line end" },
    ["<C-x>"] = { "<cmd> x <CR>", "Save and quit" },
    ["<C-q>"] = { "<cmd> q <CR>", "Quit" },
  },
}

M.lspsaga = {
  n = {
    ["<leader>sf"] = { "<cmd> Lspsaga finder <CR>", "finder" },
    ["<leader>sp"] = { "<cmd> Lspsaga peek_definition <CR>", "peek_definition" },
    ["<leader>sg"] = { "<cmd> Lspsaga goto_definition <CR>", "goto_definition" },
    ["gd"] = { "<cmd> Lspsaga goto_definition <CR>", "goto_definition" },
    ["<leader>sc"] = { "<cmd> Lspsaga code_action <CR>", "code_action" },
    ["<leader>sh"] = { "<cmd> Lspsaga hover_doc <CR>", "hover_doc" },
    ["<leader>sw"] = { "<cmd> Lspsaga show_workspace_diagnostics <CR>", "show_workspace_diagnostics" },
    ["<leader>sdn"] = { "<cmd> Lspsaga diagnostic_jump_next <CR>", "diagnostic_jump_next" },
    ["<leader>sdp"] = { "<cmd> Lspsaga diagnostic_jump_prev <CR>", "diagnostic_jump_prev" },
    ["<leader>sr"] = { "<cmd> Lspsaga rename <CR>", "rename" },
    ["<leader>so"] = { "<cmd> Lspsaga outline <CR>", "outline" },
  },
}

M.telescope = {
  n = {
    ["<leader>tt"] = {
      function()
        require("base46").toggle_theme()
      end,
      "toggle_theme",
    },
    ["<leader>fc"] = { "<cmd> Telescope commands <CR>", "Telescope commands" },
    ["<leader>fd"] = { "<cmd> Telescope command_history <CR>", "Telescope command history" },
    ['<leader>f"'] = { "<cmd> Telescope registers <CR>", "Telescope registers" },
  },
}

M.marks = {
  n = {
    ["<leader>ml"] = { "<cmd> MarksListAll <CR>", "List all marks" },
    ["<leader>mx"] = { "<cmd> delmarks! | wshada! <CR>", "Clean marks" },
  },
}

M.git = {
  n = {
    ["<leader>gg"] = { "<cmd> LazyGit <CR>", "Open Lazygit" },
    ["<leader>ga"] = { "<cmd> Git blame <CR>", "Git blame file" },
  },
}

M.hop = {
  n = {
    ["<leader>aa"] = { "<cmd> HopWord <CR>", "Hop to word" },
    ["<leader>az"] = { "<cmd> HopVertical <CR>", "Hop to a line" },
  },
}

M.zen = {
  n = {
    ["<leader>ll"] = { "<cmd> TZAtaraxis <CR>", "Start zen mode" },
    ["<leader>la"] = { "<cmd> Twilight <CR>", "Start Twilight mode" },
  },
}

return M
