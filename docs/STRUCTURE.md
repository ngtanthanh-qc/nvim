# 📂 Cấu Trúc Config Neovim

> Phân tích chi tiết cấu trúc thư mục và file trong cấu hình Neovim.

## 🗂️ Tổng Quan Cấu Trúc

```
~/.config/nvim/
├── init.lua              # Entry point - chỉ load lazy.lua
├── lazy-lock.json        # Lock file cho plugin versions
├── docs/                 # Documentation (thư mục này)
└── lua/
    ├── config/           # Cấu hình core
    │   ├── globals.lua   # Leader key = Space
    │   ├── options.lua   # Vim options (tabs, search, UI...)
    │   ├── keymaps.lua   # Phím tắt chung
    │   ├── autocmds.lua  # Auto commands
    │   └── lazy.lua      # Plugin manager bootstrap
    ├── plugins/          # Plugin configs
    │   ├── fzf-lua.lua
    │   ├── nvim-lspconfig.lua
    │   ├── nvim-cmp.lua
    │   ├── nvim-tree.lua
    │   ├── nvim-treesitter.lua
    │   ├── lspsaga.lua
    │   ├── trouble-nvim.lua
    │   ├── gitsigns-nvim.lua
    │   ├── vim-fugitive.lua
    │   ├── vim-tmux-navigator.lua
    │   ├── which-key.lua
    │   ├── mini-nvim.lua
    │   ├── lualine-nvim.lua
    │   ├── theme.lua
    │   └── webdev-icons.lua
    ├── servers/          # LSP server configs
    │   ├── init.lua      # Load tất cả servers
    │   ├── efm-langserver.lua
    │   ├── lua_ls.lua
    │   ├── pyright.lua
    │   ├── gopls.lua
    │   ├── ts_ls.lua
    │   ├── jsonls.lua
    │   ├── bashls.lua
    │   ├── clangd.lua
    │   ├── dockerls.lua
    │   ├── emmet_ls.lua
    │   ├── yamlls.lua
    │   ├── tailwindcss.lua
    │   └── solidity_ls_nomicfoundation.lua
    └── utils/            # Helper functions
        ├── lsp.lua       # LSP on_attach keymaps
        └── diagnostics.lua # Diagnostic signs config
```

---

## 📁 Chi Tiết Từng Thư Mục

### 1. `lua/config/` - Core Configuration

| File | Mục đích | Nội dung chính |
|------|----------|----------------|
| `globals.lua` | Global variables | `mapleader = " "`, `maplocalleader = " "` |
| `options.lua` | Vim options | tabs, search, UI, files, clipboard |
| `keymaps.lua` | Keybindings | window, buffer, navigation |
| `autocmds.lua` | Auto commands | format on save, restore cursor, highlight yank |
| `lazy.lua` | Plugin manager | Bootstrap lazy.nvim, load plugins |

### 2. `lua/plugins/` - Plugin Configurations

Mỗi file là một plugin spec theo format lazy.nvim:

```lua
return {
  "author/plugin-name",
  dependencies = { ... },
  opts = { ... },
  config = function() ... end,
  keys = { ... },
}
```

### 3. `lua/servers/` - LSP Server Configs

Mỗi file export một function nhận `capabilities`:

```lua
return function(capabilities)
  vim.lsp.config('server_name', {
    capabilities = capabilities,
    settings = { ... },
  })
end
```

### 4. `lua/utils/` - Utility Functions

- `lsp.lua`: Chứa `on_attach` function với tất cả LSP keymaps
- `diagnostics.lua`: Cấu hình diagnostic signs (icons)

---

## 🔄 Load Order

```
1. init.lua
   └── require("config.lazy")
       ├── Bootstrap lazy.nvim (nếu chưa có)
       ├── require("config.globals")    # Leader key
       ├── require("config.options")    # Vim options
       ├── require("config.keymaps")    # Global keymaps
       ├── require("config.autocmds")   # Auto commands
       └── require("lazy").setup()      # Load plugins
           └── { import = "plugins" }   # Load tất cả file trong plugins/
               └── nvim-lspconfig
                   ├── require("utils.diagnostics").setup()
                   └── require("servers")  # Load tất cả LSP servers
```

---

## ⚙️ Options Chi Tiết

### Indentation
```lua
tabstop = 2         -- Tab = 2 spaces
shiftwidth = 2      -- Indent = 2 spaces
expandtab = true    -- Spaces thay vì tabs
smartindent = true  -- Smart auto-indent
```

### Search
```lua
ignorecase = true   -- Không phân biệt hoa/thường
smartcase = true    -- Phân biệt nếu có chữ hoa
hlsearch = false    -- Không highlight kết quả
incsearch = true    -- Highlight khi gõ
```

### UI
```lua
number = true           -- Số dòng
relativenumber = true   -- Số dòng tương đối
cursorline = true       -- Highlight dòng hiện tại
colorcolumn = "100"     -- Cột 100
scrolloff = 10          -- 10 dòng padding
signcolumn = "yes"      -- Luôn hiện sign column
termguicolors = true    -- 24-bit colors
```

### Files
```lua
backup = false      -- Không backup
swapfile = false    -- Không swap
undofile = true     -- Persistent undo
updatetime = 300    -- 300ms cho CursorHold
```

---

## 📅 Cập Nhật

- **2026-02-05**: Tạo documentation cấu trúc ban đầu
