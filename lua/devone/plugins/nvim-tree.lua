return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    -- configuraciones recomendadas
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = false,
      },
      -- cambio carpetas por iconos de flecha
      renderer = {
        indent_markers = {
        enable = true,
      },
    --  icons = {
    --    glyphs = {
    --      folder = {
    --        arrow_closed = "", -- "", -- flecha cuando la carpeta está cerrada
    --        arrow_open = "" -- "" -- flecha cuando la carpeta está abierta
    --      },
    --    },
    --  },
    },
    -- disable window_picker for 
    -- explorer to work well with
    -- window splits
    actions = {
      open_file = {
        window_picker = {
          enable = false,
        },
      },
    },
    filters = {
      custom = { ".DS_Store" },
    },
    git = {
      ignore = false,
    },
  })

    -- set de atajos de teclado
    local keymap = vim.keymap -- para ser conciso, es decir, realizar economía de medios.

    keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>", { desc = "Alterna el explorador de archivos." })
    keymap.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Alterna el explorador de archivos." })
    keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Colapsa el explorador de archivos." })
    keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresca el explorador de archivos." })
  end
}
