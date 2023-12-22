local M = {}

local HEIGHT_RATIO = 0.8
local WIDTH_RATIO = 0.8

M.treesitter = {
  ensure_installed = {
    "vim",
    "yaml",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "vue",
    "graphql",
    "hjson",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
  }
}

M.mason = {
  ensure_installed = {
    "json-lsp",
    "deno",
    "css-lsp",
    "eslint-lsp",
    "eslint_d",
    "html-lsp",
    "prettier",
    "typescript-language-server",
    "yaml-language-server",
    "omnisharp"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },
  -- view = {
  --   width = 70,
  --   side = "right"
  -- },

  view = {
    relativenumber = true,
    float = {
      enable = true,
      open_win_config = function()
        local screen_w = vim.opt.columns:get()
        local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
        local window_w = screen_w * WIDTH_RATIO
        local window_h = screen_h * HEIGHT_RATIO
        local window_w_int = math.floor(window_w)
        local window_h_int = math.floor(window_h)
        local center_x = (screen_w - window_w) / 2
        local center_y = ((vim.opt.lines:get() - window_h) / 2)
                         - vim.opt.cmdheight:get()
        return {
          border = "rounded",
          relative = "editor",
          row = center_y,
          col = center_x,
          width = window_w_int,
          height = window_h_int,
        }
        end,
    },
    width = function()
      return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
    end,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

return M
