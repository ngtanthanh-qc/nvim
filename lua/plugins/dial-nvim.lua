-- =============================================================================
--  PLUGIN : dial.nvim
--  ABOUT  : Enhanced increment/decrement for booleans, dates, hex, semver...
--  SOURCE : https://github.com/monaqa/dial.nvim
-- =============================================================================
return {
  {
    "monaqa/dial.nvim",
    keys = {
      { "<C-a>", function() return require("dial.map").inc_normal() end, expr = true, desc = "Increment" },
      { "<C-x>", function() return require("dial.map").dec_normal() end, expr = true, desc = "Decrement" },
      { "<C-a>", function() return require("dial.map").inc_visual() end, mode = "v", expr = true, desc = "Increment (visual)" },
      { "<C-x>", function() return require("dial.map").dec_visual() end, mode = "v", expr = true, desc = "Decrement (visual)" },
    },
    config = function()
      local augend = require("dial.augend")
      require("dial.config").augends:register_group({
        default = {
          augend.integer.alias.decimal,
          augend.integer.alias.hex,
          augend.date.alias["%Y/%m/%d"],
          augend.date.alias["%Y-%m-%d"],
          augend.constant.alias.bool,       -- true/false
          augend.semver.alias.semver,       -- 1.0.0
          augend.constant.new({ elements = { "let", "const" } }),
          augend.constant.new({ elements = { "and", "or" } }),
        },
      })
    end,
  },
}
