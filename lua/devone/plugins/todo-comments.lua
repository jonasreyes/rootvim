return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local todo_comments = require("todo-comments")

    -- seteamos los atajos del teclado
    local keymap = vim.keymap -- para ser más conciso.

    keymap.set("n", "]t", function()
      todo_comments.jump_next()
    end, { desc = "Siguiente comentario TODO" })

    keymap.set("n", "[t", function()
      todo_comments.jump_prev()
    end, { desc = "Anterior comentario TODO" })

    todo_comments.setup()
  end,
}
