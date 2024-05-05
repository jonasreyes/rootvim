-- ROOTVIM V-01
-- Autor: Jonás Antonio Reyes Casanova | Contacto: https://jonasroot.t.me
-- Cómo dar crédito
-- Si utiliza este script en su propio trabajo, le agradecería que me mencionara como autor original.
-- Puede hacerlo incluyendo el siguiente comentario en la parte superior de su archivo Lua:
-- Este script está basado en el trabajo de Jonás A. Reyes C.
-- https://jonasroot.t.me/
return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    -- Set header
    dashboard.section.header.val = {
  "                                                               ",
  "   ██████╗  ██████╗  ██████╗ ████████╗██╗   ██╗██╗███╗   ███╗  ",
  "   ██╔══██╗██╔═══██╗██╔═══██╗╚══██╔══╝██║   ██║██║████╗ ████║  ",
  "   ██████╔╝██║   ██║██║   ██║   ██║   ██║   ██║██║██╔████╔██║  ",
  "   ██╔══██╗██║   ██║██║   ██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║  ",
  "   ██║  ██║╚██████╔╝╚██████╔╝   ██║    ╚████╔╝ ██║██║ ╚═╝ ██║  ", 
  "   ╚═╝  ╚═╝ ╚═════╝  ╚═════╝    ╚═╝     ╚═══╝  ╚═╝╚═╝     ╚═╝  ",
  "                                                               ",
    }

    -- Seteando el menú
    dashboard.section.buttons.val = {
      dashboard.button("e", "  > Nuevo archivo", "<cmd>ene<CR>"),
      dashboard.button("ESP ee", "  > Alternar explorador de archivos", "<cmd>NvimTreeToggle<CR>"),
      dashboard.button("ESP ff", "󰱼  > Buscar archivo", "<cmd>Telescope find_files<CR>"),
      dashboard.button("ESP fs", "  > Buscar palabra", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("ESP wr", "󰁯  > Restaurar sesion del directorio actual", "<cmd>SessionRestore<CR>"),
      dashboard.button("q", "  > Salir de ROOTVIM", "<cmd>qa<CR>"),
    }

    -- Enviando configuración a Alpha
    alpha.setup(dashboard.opts)

    --Disable folding on alpha buffer
    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
  end,
}
