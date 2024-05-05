return {
  "rcarriga/nvim-notify",
  config = function()
    local notify = require("notify")
    -- para la transparencia
    notify.setup({ background_colour = "#000000" })
    -- este sobrescribe la función de notificación de Neovim
    vim.notify = notify.notify
  end,
}
