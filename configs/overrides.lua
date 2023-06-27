local M = {}

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
    "vue-language-server",
    "yaml-language-server"
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
  },
  view = {
    width = 70
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
