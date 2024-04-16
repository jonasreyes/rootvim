return {
  "windwp/nvim-autopairs",
  event = { "InsertEnter" },
  dependencies = {
    "hrsh7th/nvim-cmp",
  },
  config = function()
    -- importando el plugin autopairs
    local autopairs = require("nvim-autopairs")

    -- configuración del pluguin
    autopairs.setup({
      check_ts = true, -- habilita treesitter
      ts_config = {
        lua = { "string" }, -- no agrega pareja in cadenas de texto de lua en nodos treesitter
        javascript = { "template_string" }, -- no agrega pareja en cadenas de texto de javascript cuando es un template_string de un nodo treesitter
        java = false, -- no chequea treesitter sobre java.
      },
    })

    -- importando la funcionalidad de autocompletado para nvim-autopairs
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")

    -- importando el pluguin de autocompletado.
    local cmp = require("cmp")

    -- creando autopairs y trabajo del autocompletado
    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

  end,
}
