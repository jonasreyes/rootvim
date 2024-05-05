-- ROOTVIM V-01
-- Autor: Jonás Antonio Reyes Casanova | Contacto: https://jonasroot.t.me
-- Cómo dar crédito
-- Si utiliza este script en su propio trabajo, le agradecería que me mencionara como autor original.
-- Puede hacerlo incluyendo el siguiente comentario en la parte superior de su archivo Lua:
-- Este script está basado en el trabajo de Jonás A. Reyes C.
-- https://jonasroot.t.me/

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "devone.plugins" }, { import = "devone.plugins.lsp" } }, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})
