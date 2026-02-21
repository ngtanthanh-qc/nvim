-- =============================================================================
--  PLUGIN : zen-mode.nvim
--  ABOUT  : Distraction-free coding. Integrates with tmux (auto-zooms pane).
--  SOURCE : https://github.com/folke/zen-mode.nvim
-- =============================================================================
return {
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    keys = {
      { "<leader>z", "<cmd>ZenMode<cr>", desc = "Zen Mode" },
    },
    opts = {
      window = {
        width = 0.85,
        options = {
          number = true,
          relativenumber = true,
        },
      },
      plugins = {
        gitsigns = { enabled = true },
        tmux = { enabled = true },  -- auto-zoom tmux pane
        kitty = { enabled = false },
      },
    },
  },
}
