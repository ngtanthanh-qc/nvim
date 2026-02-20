# 📋 Enhancement Backlog

> Danh sách chi tiết các ý tưởng cải tiến cấu hình Neovim.

## 🏷️ Labels

| Label | Ý nghĩa |
|-------|---------|
| 🔴 **HIGH** | Ưu tiên cao, nên làm sớm |
| 🟡 **MEDIUM** | Ưu tiên trung bình |
| 🟢 **LOW** | Ưu tiên thấp, nice to have |
| ✅ **DONE** | Đã hoàn thành |
| ❌ **REJECTED** | Đã từ chối |

---

## 🔴 HIGH Priority

### 1. Thêm `lazydev.nvim` cho Lua Development
**Mô tả**: Plugin giúp LSP hiểu Neovim API tốt hơn khi edit config  
**Lý do**: Hiện tại `lua_ls` không nhận diện đầy đủ `vim.*` APIs  
**Link**: https://github.com/folke/lazydev.nvim

```lua
-- Gợi ý config
{
  "folke/lazydev.nvim",
  ft = "lua",
  opts = {
    library = {
      { path = "${3rd}/luv/library", words = { "vim%.uv" } },
    },
  },
}
```

---

### 2. Thêm Navigation Plugin (`flash.nvim` hoặc `leap.nvim`)
**Mô tả**: Di chuyển nhanh trong file bằng cách nhảy đến bất kỳ vị trí nào  
**Lý do**: Hiện tại chỉ có search cơ bản, navigation chậm  
**Options**:
- `flash.nvim`: https://github.com/folke/flash.nvim (hiện đại, nhiều tính năng)
- `leap.nvim`: https://github.com/ggandor/leap.nvim (đơn giản, nhanh)

---

### 3. Cấu hình Keymaps cho `gitsigns.nvim`
**Mô tả**: Thêm keymaps để stage hunks, preview changes, blame  
**Lý do**: Hiện tại plugin chỉ hiển thị signs, chưa có keymaps  

```lua
-- Gợi ý keymaps
keys = {
  { "]h", "<cmd>Gitsigns next_hunk<CR>", desc = "Next hunk" },
  { "[h", "<cmd>Gitsigns prev_hunk<CR>", desc = "Prev hunk" },
  { "<leader>hs", "<cmd>Gitsigns stage_hunk<CR>", desc = "Stage hunk" },
  { "<leader>hr", "<cmd>Gitsigns reset_hunk<CR>", desc = "Reset hunk" },
  { "<leader>hp", "<cmd>Gitsigns preview_hunk<CR>", desc = "Preview hunk" },
  { "<leader>hb", "<cmd>Gitsigns blame_line<CR>", desc = "Blame line" },
}
```

---

## 🟡 MEDIUM Priority

### 4. Thay EFM bằng `conform.nvim` + `nvim-lint`
**Mô tả**: Sử dụng tools hiện đại hơn cho formatting và linting  
**Lý do**: 
- `conform.nvim`: Async formatting, fallback formatters
- `nvim-lint`: Async linting, không block UI
- EFM đã cũ và phức tạp hơn

**Links**:
- https://github.com/stevearc/conform.nvim
- https://github.com/mfussenegger/nvim-lint

---

### 5. Xem xét `telescope.nvim` vs `fzf-lua`
**Mô tả**: So sánh và quyết định fuzzy finder phù hợp  
**Ưu điểm Telescope**:
- Nhiều extensions
- Previewer tốt hơn
- Tích hợp sâu với ecosystem

**Ưu điểm FZF-Lua (hiện tại)**:
- Nhanh hơn
- Ít dependencies
- Native feel

**Quyết định**: Giữ `fzf-lua` nếu performance là ưu tiên

---

### 6. Thêm `noice.nvim` cho UI
**Mô tả**: UI đẹp hơn cho messages, cmdline, popupmenu  
**Lý do**: Hiện tại UI khá cơ bản  
**Link**: https://github.com/folke/noice.nvim

⚠️ **Lưu ý**: Có thể gây conflict với một số plugins

---

### 7. Thêm `nvim-autopairs` thay `mini.pairs`
**Mô tả**: Auto pairs với tích hợp nvim-cmp tốt hơn  
**Lý do**: `mini.pairs` đơn giản, thiếu một số tính năng  
**Link**: https://github.com/windwp/nvim-autopairs

---

## 🟢 LOW Priority

### 8. Thêm DAP Support cho nhiều ngôn ngữ
**Mô tả**: Debug Adapter Protocol cho Python, Go, JS, etc.  
**Lý do**: Hiện chỉ có DAP cho Rust  
**Plugins cần**:
- `mfussenegger/nvim-dap`
- `rcarriga/nvim-dap-ui`
- Adapter plugins cho từng ngôn ngữ

---

### 9. Thêm `neotest` cho Testing
**Mô tả**: Run tests trực tiếp trong Neovim  
**Link**: https://github.com/nvim-neotest/neotest

---

### 10. Thêm `octo.nvim` cho GitHub
**Mô tả**: Quản lý GitHub Issues, PRs trong Neovim  
**Link**: https://github.com/pwntester/octo.nvim

---

### 11. Thêm `neo-tree.nvim` thay `nvim-tree`
**Mô tả**: File explorer hiện đại hơn  
**Link**: https://github.com/nvim-neo-tree/neo-tree.nvim

---

### 12. Thêm `harpoon` cho file navigation
**Mô tả**: Quick marks cho files thường dùng  
**Link**: https://github.com/ThePrimeagen/harpoon

---

### 13. Thêm `undotree` để visualize undo history
**Mô tả**: Xem và navigate undo tree  
**Link**: https://github.com/mbbill/undotree

---

## ✅ DONE

*(Chưa có)*

---

## ❌ REJECTED

*(Chưa có)*

---

## 📅 Cập Nhật

- **2026-02-05**: Khởi tạo backlog với 13 items
