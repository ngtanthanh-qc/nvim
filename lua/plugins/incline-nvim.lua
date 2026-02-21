-- =============================================================================
--  PLUGIN : incline.nvim
--  ABOUT  : Floating filename indicator shown in each split window
--  SOURCE : https://github.com/b0o/incline.nvim
-- =============================================================================
return {
  {
    "b0o/incline.nvim",
    event = "BufReadPre",
    priority = 1200,
    config = function()
      -- Duskfox palette
      local fg_active = "#cdcbe0"
      local bg_active = "#569fba"
      local fg_nc     = "#908caa"
      local bg_nc     = "#393552"

      require("incline").setup({
        highlight = {
          groups = {
            InclineNormal   = { guibg = bg_active, guifg = "#191726" },
            InclineNormalNC = { guibg = bg_nc,     guifg = fg_nc },
          },
        },
        window = {
          margin = { vertical = 0, horizontal = 1 },
        },
        hide = {
          cursorline = true,
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")
          if filename == "" then filename = "[No Name]" end
          if vim.bo[props.buf].modified then
            filename = "[+] " .. filename
          end
          local icon, color = require("nvim-web-devicons").get_icon_color(filename)
          return {
            { icon or "", guifg = color },
            { " " },
            { filename },
          }
        end,
      })
    end,
  },
}
