# 🚀 Enhancement Roadmap

> Kế hoạch cải tiến cấu hình Neovim theo thời gian.

## 📊 Trạng Thái Hiện Tại

| Aspect | Đánh Giá | Ghi Chú |
|--------|----------|---------|
| **Tổ chức code** | ⭐⭐⭐⭐⭐ | Rất rõ ràng, modular |
| **LSP setup** | ⭐⭐⭐⭐⭐ | 13 servers, linters, formatters |
| **Keymaps** | ⭐⭐⭐⭐ | Logic, có fallback |
| **Auto-features** | ⭐⭐⭐⭐ | Format on save, restore cursor |
| **UI/UX** | ⭐⭐⭐⭐ | Theme đẹp, transparent |
| **Performance** | ⭐⭐⭐⭐ | Lazy loading |

---

## 🎯 Roadmap

### Phase 1: Quick Wins (Ưu tiên cao)
- [ ] Thêm `lazydev.nvim` cho Lua LSP tốt hơn
- [ ] Thêm `flash.nvim` hoặc `leap.nvim` cho navigation
- [ ] Cấu hình keymaps cho `gitsigns.nvim`

### Phase 2: Modernization (Ưu tiên trung bình)
- [ ] Thay `efm-langserver` bằng `conform.nvim` + `nvim-lint`
- [ ] Xem xét `telescope.nvim` vs `fzf-lua`
- [ ] Thêm `noice.nvim` cho UI đẹp hơn

### Phase 3: Advanced Features (Ưu tiên thấp)
- [ ] Thêm DAP support cho nhiều ngôn ngữ
- [ ] Thêm `neotest` cho testing
- [ ] Thêm `octo.nvim` cho GitHub integration

---

## 📁 Files

| File | Mô tả |
|------|-------|
| [BACKLOG.md](./BACKLOG.md) | Danh sách chi tiết các ý tưởng cải tiến |
| [CHANGELOG.md](./CHANGELOG.md) | Lịch sử các thay đổi đã thực hiện |

---

## 📅 Cập Nhật

- **2026-02-05**: Khởi tạo enhancement roadmap
