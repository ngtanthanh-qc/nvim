# 🔌 Danh Sách Plugins

> Chi tiết về tất cả plugins đang được sử dụng trong cấu hình Neovim.

## 📊 Tổng Quan

| Số lượng | Loại |
|----------|------|
| 17 | Plugins chính |
| 10 | Mini.nvim modules |
| 13 | LSP servers |

---

## 🎯 Core Plugins

### 1. Plugin Manager

| Plugin | Mô tả | Link |
|--------|-------|------|
| **folke/lazy.nvim** | Plugin manager hiện đại, lazy-loading | [GitHub](https://github.com/folke/lazy.nvim) |

### 2. LSP & Completion

| Plugin | Mô tả | Link |
|--------|-------|------|
| **neovim/nvim-lspconfig** | Cấu hình LSP | [GitHub](https://github.com/neovim/nvim-lspconfig) |
| **mason-org/mason.nvim** | LSP/DAP installer | [GitHub](https://github.com/mason-org/mason.nvim) |
| **hrsh7th/nvim-cmp** | Autocomplete engine | [GitHub](https://github.com/hrsh7th/nvim-cmp) |
| **L3MON4D3/LuaSnip** | Snippet engine | [GitHub](https://github.com/L3MON4D3/LuaSnip) |
| **rafamadriz/friendly-snippets** | Collection of snippets | [GitHub](https://github.com/rafamadriz/friendly-snippets) |
| **creativenull/efmls-configs-nvim** | EFM linter/formatter configs | [GitHub](https://github.com/creativenull/efmls-configs-nvim) |
| **glepnir/lspsaga.nvim** | LSP UI enhancements | [GitHub](https://github.com/glepnir/lspsaga.nvim) |

### 3. Treesitter & Syntax

| Plugin | Mô tả | Link |
|--------|-------|------|
| **nvim-treesitter/nvim-treesitter** | Syntax highlighting, text objects | [GitHub](https://github.com/nvim-treesitter/nvim-treesitter) |

### 4. Navigation & Search

| Plugin | Mô tả | Link |
|--------|-------|------|
| **ibhagwan/fzf-lua** | Fuzzy finder | [GitHub](https://github.com/ibhagwan/fzf-lua) |
| **nvim-tree/nvim-tree.lua** | File explorer | [GitHub](https://github.com/nvim-tree/nvim-tree.lua) |
| **christoomey/vim-tmux-navigator** | Tmux integration | [GitHub](https://github.com/christoomey/vim-tmux-navigator) |

### 5. Diagnostics & Debugging

| Plugin | Mô tả | Link |
|--------|-------|------|
| **folke/trouble.nvim** | Diagnostics viewer | [GitHub](https://github.com/folke/trouble.nvim) |

### 6. Git

| Plugin | Mô tả | Link |
|--------|-------|------|
| **lewis6991/gitsigns.nvim** | Git signs in gutter | [GitHub](https://github.com/lewis6991/gitsigns.nvim) |
| **tpope/vim-fugitive** | Git commands | [GitHub](https://github.com/tpope/vim-fugitive) |

### 7. UI & Theme

| Plugin | Mô tả | Link |
|--------|-------|------|
| **EdenEast/nightfox.nvim** | Colorscheme (duskfox) | [GitHub](https://github.com/EdenEast/nightfox.nvim) |
| **xiyaowong/nvim-transparent** | Transparent background | [GitHub](https://github.com/xiyaowong/nvim-transparent) |
| **nvim-lualine/lualine.nvim** | Statusline | [GitHub](https://github.com/nvim-lualine/lualine.nvim) |
| **nvim-tree/nvim-web-devicons** | File icons | [GitHub](https://github.com/nvim-tree/nvim-web-devicons) |

### 8. Utilities

| Plugin | Mô tả | Link |
|--------|-------|------|
| **folke/which-key.nvim** | Keymap hints | [GitHub](https://github.com/folke/which-key.nvim) |

---

## 🧩 Mini.nvim Modules

| Module | Mô tả | Keymaps |
|--------|-------|---------|
| **mini.ai** | Extended text objects | `a)`, `i)`, `af`, `if`, `aa`, `ia` |
| **mini.comment** | Comment code | `gcc`, `gc` + motion |
| **mini.move** | Move lines/blocks | `Alt+h/j/k/l` |
| **mini.surround** | Surround operations | `sa`, `sd`, `sr` |
| **mini.cursorword** | Highlight word under cursor | Tự động |
| **mini.indentscope** | Indent guides | Tự động |
| **mini.pairs** | Auto pairs | Tự động |
| **mini.trailspace** | Highlight trailing spaces | Tự động |
| **mini.bufremove** | Delete buffers safely | `:lua MiniBufremove.delete()` |
| **mini.notify** | Notification system | Tự động |

---

## 📦 nvim-cmp Sources

| Source | Plugin | Mô tả |
|--------|--------|-------|
| `codeium` | (external) | AI completions |
| `luasnip` | cmp_luasnip | Snippets |
| `nvim_lsp` | cmp-nvim-lsp | LSP completions |
| `buffer` | cmp-buffer | Words from buffer |
| `path` | cmp-path | File paths |
| `nvim_lsp_signature_help` | cmp-nvim-lsp-signature-help | Function signatures |

---

## 🌳 Treesitter Parsers

Các parser được tự động cài đặt:

```
bash, c, cpp, css, dockerfile, go, html, javascript, json, 
lua, markdown, markdown_inline, python, rust, svelte, 
typescript, vue, yaml
```

---

## 📅 Cập Nhật

- **2026-02-05**: Tạo documentation plugins ban đầu
