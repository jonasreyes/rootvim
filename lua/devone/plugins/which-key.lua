return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 500
  end,
  opts = {
    -- tu configuración va aquí
    -- o deje vacío esta parte para usar la configuración por defecto.
  },
}
