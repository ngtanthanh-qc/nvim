# 📝 Changelog

> Lịch sử các thay đổi đã thực hiện trong cấu hình Neovim.

Tất cả các thay đổi đáng chú ý sẽ được ghi lại tại đây.

Format dựa trên [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

---

## [Unreleased]

### Added
- Tạo thư mục `docs/` với documentation đầy đủ
- Tạo `CHEATSHEET.md` với hướng dẫn phím tắt
- Tạo `STRUCTURE.md` phân tích cấu trúc config
- Tạo `PLUGINS.md` liệt kê chi tiết plugins
- Tạo `LSP-SERVERS.md` chi tiết LSP servers
- Tạo `enhancements/` với roadmap và backlog

### Changed
*(Chưa có)*

### Deprecated
*(Chưa có)*

### Removed
*(Chưa có)*

### Fixed
*(Chưa có)*

### Security
*(Chưa có)*

---

## [1.0.0] - 2026-02-05

### Initial Configuration

**Plugins cài đặt:**
- lazy.nvim (plugin manager)
- nvim-lspconfig + mason.nvim (LSP)
- nvim-cmp + LuaSnip (completion)
- nvim-treesitter (syntax)
- fzf-lua (fuzzy finder)
- nvim-tree (file explorer)
- lspsaga.nvim (LSP UI)
- trouble.nvim (diagnostics)
- gitsigns.nvim + vim-fugitive (git)
- nightfox.nvim (colorscheme)
- lualine.nvim (statusline)
- which-key.nvim (keymap hints)
- vim-tmux-navigator (tmux integration)
- mini.nvim (10 modules)

**LSP Servers:**
- lua_ls, pyright, gopls, ts_ls
- jsonls, yamlls, bashls
- clangd, dockerls, emmet_ls
- tailwindcss, solidity_ls
- efm (linting/formatting)

**Features:**
- Format on save (EFM)
- Restore cursor position
- Highlight yanked text
- Centered scrolling
- Transparent background
- Relative line numbers

---

## Template cho entries mới

```markdown
## [X.Y.Z] - YYYY-MM-DD

### Added
- New feature description

### Changed
- Change description

### Deprecated
- Deprecated feature

### Removed
- Removed feature

### Fixed
- Bug fix description

### Security
- Security fix
```

---

## 📅 Cập Nhật

- **2026-02-05**: Khởi tạo changelog
