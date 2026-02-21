-- =============================================================================
--  TITLE  : Key Mappings
--  ABOUT  : Custom keybindings for normal, insert, and visual modes
--  FILE   : lua/config/keymaps.lua
-- =============================================================================

-- Center screen when jumping
vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result (centered)" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Half page down (centered)" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Half page up (centered)" })

-- Buffer navigation
vim.keymap.set("n", "<leader>bn", "<Cmd>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<leader>bp", "<Cmd>bprevious<CR>", { desc = "Previous buffer" })

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to bottom window" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to top window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })

-- Splitting & Resizing
vim.keymap.set("n", "<leader>sv", "<Cmd>vsplit<CR>", { desc = "Split window vertically" })
vim.keymap.set("n", "<leader>sh", "<Cmd>split<CR>", { desc = "Split window horizontally" })
vim.keymap.set("n", "<C-Up>", "<Cmd>resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-Down>", "<Cmd>resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-Left>", "<Cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-Right>", "<Cmd>vertical resize +2<CR>", { desc = "Increase window width" })

-- Better indenting in visual mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left and reselect" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right and reselect" })

-- Better J behavior
vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines and keep cursor position" })

-- Quick config editing
vim.keymap.set("n", "<leader>rc", "<Cmd>e ~/.config/nvim/init.lua<CR>", { desc = "Edit config" })

-- File Explorer
vim.keymap.set("n", "<leader>m", "<Cmd>NvimTreeFocus<CR>", { desc = "Focus on File Explorer" })
vim.keymap.set("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>", { desc = "Toggle File Explorer" })

-- ============================================================
--  Blackhole Register Tricks (from craftzdog)
--  Prevents delete/change operations from overwriting clipboard
-- ============================================================

-- x: delete char without touching clipboard
vim.keymap.set("n", "x", '"_x')

-- Paste from yank register (persists even after deleting)
vim.keymap.set("n", "<Leader>p", '"0p', { desc = "Paste from yank register" })
vim.keymap.set("n", "<Leader>P", '"0P', { desc = "Paste from yank register (before)" })
vim.keymap.set("v", "<Leader>p", '"0p', { desc = "Paste from yank register" })

-- Delete to blackhole (don't touch clipboard)
vim.keymap.set("n", "<Leader>d", '"_d', { desc = "Delete to blackhole" })
vim.keymap.set("n", "<Leader>D", '"_D', { desc = "Delete to blackhole (EOL)" })
vim.keymap.set("v", "<Leader>d", '"_d', { desc = "Delete to blackhole" })
vim.keymap.set("v", "<Leader>D", '"_D', { desc = "Delete to blackhole (EOL)" })

-- Change to blackhole (don't touch clipboard)
vim.keymap.set("n", "<Leader>c", '"_c', { desc = "Change to blackhole" })
vim.keymap.set("n", "<Leader>C", '"_C', { desc = "Change to blackhole (EOL)" })
vim.keymap.set("v", "<Leader>c", '"_c', { desc = "Change to blackhole" })
vim.keymap.set("v", "<Leader>C", '"_C', { desc = "Change to blackhole (EOL)" })

-- Delete word backwards without touching clipboard
vim.keymap.set("n", "dw", 'vb"_d', { desc = "Delete word backwards (blackhole)" })

-- Increment / Decrement
vim.keymap.set("n", "+", "<C-a>", { desc = "Increment number" })
vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement number" })

-- Select all
vim.keymap.set("n", "<C-a>", "gg<S-v>G", { desc = "Select all" })

-- Tab management
vim.keymap.set("n", "te", ":tabedit ", { desc = "Open new tab" })
vim.keymap.set("n", "<Tab>", ":tabnext<Return>", { desc = "Next tab", silent = true })
vim.keymap.set("n", "<S-Tab>", ":tabprev<Return>", { desc = "Previous tab", silent = true })

-- Disable comment continuation on new line
vim.keymap.set("n", "<Leader>o", "o<Esc>^Da", { desc = "New line below (no comment)" })
vim.keymap.set("n", "<Leader>O", "O<Esc>^Da", { desc = "New line above (no comment)" })
