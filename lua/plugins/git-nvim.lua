-- =============================================================================
--  PLUGIN : git.nvim
--  ABOUT  : Git blame & open-in-browser integration
--  SOURCE : https://github.com/dinhhuy258/git.nvim
-- =============================================================================
return {
  {
    "dinhhuy258/git.nvim",
    event = "BufReadPre",
    opts = {
      keymaps = {
        -- Open git blame window
        blame = "<Leader>gb",
        -- Open file/folder on GitHub (or host) in browser
        browse = "<Leader>go",
      },
    },
  },
}
