-- =============================================================================
--  PLUGIN : inc-rename.nvim
--  ABOUT  : Incremental LSP rename with live preview in the buffer
--  SOURCE : https://github.com/smjonas/inc-rename.nvim
-- =============================================================================
return {
  {
    "smjonas/inc-rename.nvim",
    cmd = "IncRename",
    keys = {
      {
        "<leader>rn",
        function()
          return ":IncRename " .. vim.fn.expand("<cword>")
        end,
        expr = true,
        desc = "Rename (incremental preview)",
      },
    },
    config = true,
  },
}
