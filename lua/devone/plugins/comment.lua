return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    -- importamos el pluguin
    local comment = require("Comment")

    local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

    -- habilitamos los comentarios
    comment.setup({
        -- para comentar tsx, jsx, svelte, y archivos html
        pre_hook = ts_context_commentstring.create_pre_hook(),
      })
  end,
}
