return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    -- importación del plugin nvim-treesitter
    local treesitter = require("nvim-treesitter.configs")

    -- configurando treesitter
    treesitter.setup({ -- habilitando resaltado de código
    highlight = {
      enable = true,
    },
    -- habilitando la indentación
    indent = { enable = true },

    -- habilitando el autotageo con el plugin 'nvim-ts-autotag'
    autotag = {
      enable = true,
    },

    -- ensure these language parsers are installed
    ensure_installed = {
      "json",
      "javascript",
      "typescript",
      "tsx",
      "yaml",
      "html",
      "css",
      "prisma",
      "markdown",
      "markdown_inline",
      "svelte",
      "graphql",
      "bash",
      "lua",
      "vim",
      "php",
      "dockerfile",
      "gitignore",
      "query",
      "vimdoc",
      "c",
      "python",
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<C-space>",
        node_incremental = "<C-space>",
        scope_incremental = false,
        node_decremental = "<bs>",
      },
    },
    })
  end,
}
