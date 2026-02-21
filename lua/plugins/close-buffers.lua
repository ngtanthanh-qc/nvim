-- =============================================================================
--  PLUGIN : close-buffers.nvim
--  ABOUT  : Close multiple buffers at once (hidden, nameless, all, other...)
--  SOURCE : https://github.com/kazhala/close-buffers.nvim
-- =============================================================================
return {
  {
    "kazhala/close-buffers.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>bh",
        function() require("close_buffers").delete({ type = "hidden" }) end,
        desc = "Close hidden buffers",
      },
      {
        "<leader>bu",
        function() require("close_buffers").delete({ type = "nameless" }) end,
        desc = "Close nameless buffers",
      },
      {
        "<leader>ba",
        function() require("close_buffers").delete({ type = "all" }) end,
        desc = "Close all buffers",
      },
      {
        "<leader>bo",
        function() require("close_buffers").delete({ type = "other" }) end,
        desc = "Close other buffers",
      },
    },
  },
}
