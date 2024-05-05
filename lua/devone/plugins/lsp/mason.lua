return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    -- importamos mason
    local mason = require("mason")

    -- importamos mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    -- habilitación de mason y configuración de los iconos.
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- lista de servidores para mason
      ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "tailwindcss",
        "lua_ls",
        "emmet_ls",
        "pyright",
        "sqlls",
        "intelephense",
        "bashls",
      },
    })
  end,
}
