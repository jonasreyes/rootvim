return {
  "gbprod/substitute.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local substitute = require("substitute")

    substitute.setup()

    -- seteo de atajos de teclado.
    local keymap = vim.keymap -- para ser mas conciso..

    keymap.set("n", "s", substitute.operator, { desc = "Sustituye con movimiento." })
    keymap.set("n", "ss", substitute.line, { desc = "Sustituye la línea." })
    keymap.set("n", "S", substitute.eol, { desc = "Substituye hasta el final de la línea." })
    keymap.set("x", "s", substitute.visual, { desc = "Substituye en modo Visual.." })
  end,
}

