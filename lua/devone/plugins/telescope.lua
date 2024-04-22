return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defeults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- mueve al resultado previo
            ["<C-j>"] = actions.move_selection_next, -- mueve al resultado siguiente
            ["<C-k>"] = actions.send_selected_to_qflist + actions.open_qflist, -- mueve al resultado previo
          },
        },
      },
    })

    telescope.load_extension("fzf")

    -- seteo de atajos del teclado
    local keymap = vim.keymap -- siendo conciso

    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Buscador ágil de archivos en CWD" })
    keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Buscador ágil de archivos recientes" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Buscador ágil de cadenas de texto en CWD" })
    keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Buscador ágil de cadenas de texto bajo el cursor." })
    keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Buscador de TODO" })

  end,
}
