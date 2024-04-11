return {
  "rmagatti/auto-session",
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore_enable = false,
      auto_session_suppress_dirs = { "~/", "~/apps", "~/Dev/", "~/Downloads/", "~/Documents/", "~/Desktop/" },
    })

    local keymap = vim.keymap

    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restaurar sesión por cwd" })
    keymap.set("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Guardar sesión por auto sesión del directorio raíz." })
    keymap.set("n", "<leader>wd", "<cmd>SessionDelete<CR>", { desc = "Borrar sesión por auto sesión del directorio raíz." })
  end,
}
