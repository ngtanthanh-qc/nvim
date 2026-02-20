# 📚 Neovim Cheatsheet - Hướng Dẫn Sử Dụng

> **Leader Key**: `Space` (Phím cách)
> 
> Đây là tài liệu hướng dẫn tất cả các phím tắt và workflow trong cấu hình Neovim của bạn.

---

## 📋 Mục Lục

1. [Di Chuyển Cơ Bản](#1--di-chuyển-cơ-bản)
2. [Quản Lý Cửa Sổ (Window)](#2--quản-lý-cửa-sổ-window)
3. [Quản Lý Buffer](#3--quản-lý-buffer)
4. [File Explorer (NvimTree)](#4--file-explorer-nvimtree)
5. [Tìm Kiếm với FZF-Lua](#5--tìm-kiếm-với-fzf-lua)
6. [LSP - Hỗ Trợ Code](#6--lsp---hỗ-trợ-code)
7. [Diagnostics & Trouble](#7--diagnostics--trouble)
8. [Treesitter - Selection](#8--treesitter---selection)
9. [Mini.nvim Plugins](#9--mininivm-plugins)
10. [Git Integration](#10--git-integration)
11. [Autocomplete (nvim-cmp)](#11--autocomplete-nvim-cmp)
12. [Debug (DAP - Rust)](#12--debug-dap---rust)
13. [Các Tiện Ích Khác](#13--các-tiện-ích-khác)

---

## 1. 🚀 Di Chuyển Cơ Bản

### Di chuyển và giữ màn hình ở giữa

| Phím | Mô tả | Use Case |
|------|-------|----------|
| `n` | Tìm tiếp (centered) | Khi tìm kiếm, nhảy đến kết quả tiếp theo và giữ cursor ở giữa màn hình |
| `N` | Tìm ngược (centered) | Nhảy đến kết quả tìm kiếm trước đó, giữ cursor ở giữa |
| `Ctrl+d` | Cuộn nửa trang xuống (centered) | Di chuyển nhanh xuống dưới, cursor luôn ở giữa |
| `Ctrl+u` | Cuộn nửa trang lên (centered) | Di chuyển nhanh lên trên, cursor luôn ở giữa |
| `J` | Nối dòng (giữ vị trí cursor) | Nối dòng dưới vào dòng hiện tại mà không làm cursor nhảy |

### Tại sao cần centered?
Khi bạn nhảy đến kết quả tìm kiếm hoặc cuộn trang, việc giữ cursor ở giữa màn hình giúp bạn luôn thấy được context xung quanh vị trí đang xem.

---

## 2. 🪟 Quản Lý Cửa Sổ (Window)

### Tạo cửa sổ mới (Split)

| Phím | Mô tả | Use Case |
|------|-------|----------|
| `<leader>sv` | Split dọc (vertical) | Mở file bên cạnh để so sánh hoặc tham khảo |
| `<leader>sh` | Split ngang (horizontal) | Mở terminal hoặc file phụ ở dưới |

### Di chuyển giữa các cửa sổ

| Phím | Mô tả |
|------|-------|
| `Ctrl+h` | Chuyển sang cửa sổ bên trái |
| `Ctrl+j` | Chuyển sang cửa sổ bên dưới |
| `Ctrl+k` | Chuyển sang cửa sổ bên trên |
| `Ctrl+l` | Chuyển sang cửa sổ bên phải |

> 💡 **Tip**: Các phím này cũng hoạt động với tmux panes nhờ plugin `vim-tmux-navigator`!

### Thay đổi kích thước cửa sổ

| Phím | Mô tả |
|------|-------|
| `Ctrl+↑` | Tăng chiều cao cửa sổ |
| `Ctrl+↓` | Giảm chiều cao cửa sổ |
| `Ctrl+←` | Giảm chiều rộng cửa sổ |
| `Ctrl+→` | Tăng chiều rộng cửa sổ |

---

## 3. 📑 Quản Lý Buffer

Buffer là các file đang được mở trong Neovim.

| Phím | Mô tả | Use Case |
|------|-------|----------|
| `<leader>bn` | Buffer tiếp theo | Chuyển sang file tiếp theo đang mở |
| `<leader>bp` | Buffer trước đó | Quay lại file trước đó |

### Mini.bufremove
Plugin `mini.bufremove` cho phép đóng buffer mà không ảnh hưởng layout cửa sổ:
- `:lua MiniBufremove.delete()` - Đóng buffer hiện tại

---

## 4. 📂 File Explorer (NvimTree)

| Phím | Mô tả | Use Case |
|------|-------|----------|
| `<leader>e` | Bật/tắt File Explorer | Xem cấu trúc thư mục dự án |
| `<leader>m` | Focus vào File Explorer | Chuyển cursor vào cây thư mục |

### Các phím trong NvimTree (khi đang focus)

| Phím | Mô tả |
|------|-------|
| `Enter` | Mở file/thư mục |
| `a` | Tạo file mới |
| `d` | Xóa file |
| `r` | Đổi tên file |
| `c` | Copy file |
| `p` | Paste file |
| `x` | Cut file |
| `q` | Đóng NvimTree |
| `R` | Refresh cây thư mục |
| `H` | Ẩn/hiện dotfiles |

---

## 5. 🔍 Tìm Kiếm với FZF-Lua

FZF là công cụ tìm kiếm mờ (fuzzy finder) cực kỳ nhanh!

### Tìm kiếm file và nội dung

| Phím | Mô tả | Use Case |
|------|-------|----------|
| `<leader>ff` | Tìm file | Nhanh chóng mở file bất kỳ trong project |
| `<leader>fg` | Live Grep | Tìm text trong toàn bộ project |
| `<leader>fb` | Tìm buffer | Chuyển đổi giữa các file đang mở |
| `<leader>fh` | Tìm Help tags | Tra cứu documentation của Vim/Neovim |

### Tìm kiếm LSP (trong file đang mở với LSP)

| Phím | Mô tả | Use Case |
|------|-------|----------|
| `<leader>fx` | Diagnostics (file hiện tại) | Xem tất cả lỗi/warning trong file |
| `<leader>fX` | Diagnostics (workspace) | Xem tất cả lỗi/warning trong project |
| `<leader>fs` | Document Symbols | Tìm function/class trong file hiện tại |
| `<leader>fS` | Workspace Symbols | Tìm function/class trong toàn project |
| `<leader>fd` | LSP Finder | Tìm definition + references |
| `<leader>fr` | References | Xem tất cả nơi sử dụng symbol |
| `<leader>ft` | Type definitions | Nhảy đến định nghĩa type |
| `<leader>fi` | Implementations | Xem các implementation của interface |
| `<leader>fw` | Workspace Symbols | Tìm symbol trong workspace |

### Workflow Tìm Kiếm

```
1. Muốn mở file nhanh? → <leader>ff → gõ tên file
2. Muốn tìm text trong project? → <leader>fg → gõ từ khóa
3. Muốn xem function nào gọi function này? → <leader>fr
4. Muốn nhảy đến định nghĩa? → <leader>fd
```

---

## 6. 🛠 LSP - Hỗ Trợ Code

LSP (Language Server Protocol) cung cấp các tính năng thông minh cho code.

### Navigation (Di chuyển trong code)

| Phím | Mô tả | Use Case |
|------|-------|----------|
| `<leader>gd` | Peek Definition | Xem định nghĩa trong popup (không rời file) |
| `<leader>gD` | Go to Definition | Nhảy đến file chứa định nghĩa |
| `<leader>gS` | Definition in Split | Mở định nghĩa trong cửa sổ mới |
| `K` | Hover Documentation | Xem docs/type của symbol tại cursor |
| `Ctrl+k` | Hover Documentation | Tương tự K |

### Chỉnh sửa Code

| Phím | Mô tả | Use Case |
|------|-------|----------|
| `<leader>ca` | Code Action | Xem gợi ý sửa lỗi, refactor |
| `<leader>rn` | Rename | Đổi tên symbol toàn project |
| `<leader>oi` | Organize Imports | Sắp xếp và dọn dẹp import |

### Diagnostics (Lỗi và Cảnh báo)

| Phím | Mô tả | Use Case |
|------|-------|----------|
| `<leader>d` | Cursor Diagnostic | Xem lỗi tại vị trí cursor |
| `<leader>D` | Line Diagnostic | Xem tất cả lỗi trên dòng |
| `<leader>nd` | Next Diagnostic | Nhảy đến lỗi tiếp theo |
| `<leader>pd` | Previous Diagnostic | Quay lại lỗi trước |

### Workflow LSP

```
1. Đang đọc code, muốn xem function làm gì?
   → Di chuyển cursor đến tên function → nhấn K

2. Muốn xem định nghĩa mà không rời file?
   → <leader>gd (peek trong popup)

3. Muốn nhảy đến định nghĩa?
   → <leader>gD

4. Code có gạch đỏ (lỗi)?
   → <leader>ca để xem gợi ý sửa
   → Hoặc <leader>d để xem chi tiết lỗi

5. Muốn đổi tên biến/function toàn project?
   → Đặt cursor lên tên → <leader>rn → gõ tên mới
```

---

## 7. ⚠️ Diagnostics & Trouble

Plugin Trouble giúp xem và quản lý diagnostics một cách trực quan.

| Phím | Mô tả | Use Case |
|------|-------|----------|
| `<leader>xx` | Workspace Diagnostics | Xem tất cả lỗi/warning trong project |
| `<leader>xX` | Buffer Diagnostics | Xem lỗi/warning chỉ trong file hiện tại |
| `<leader>cs` | Symbols | Xem outline của file (class, function...) |
| `<leader>cl` | LSP Definitions/References | Xem definitions và references trong panel |
| `<leader>xL` | Location List | Xem location list |
| `<leader>xQ` | Quickfix List | Xem quickfix list |

### Workflow Trouble

```
1. Sau khi save, có nhiều lỗi → <leader>xx để xem tổng quan
2. Chọn lỗi trong Trouble → Enter để nhảy đến vị trí lỗi
3. Muốn xem outline của file → <leader>cs
```

---

## 8. 🌳 Treesitter - Selection

Treesitter giúp bạn select code thông minh dựa trên cấu trúc AST.

| Phím | Mô tả | Use Case |
|------|-------|----------|
| `Enter` | Bắt đầu selection / Mở rộng selection | Chọn node nhỏ nhất, nhấn tiếp để mở rộng |
| `Tab` | Mở rộng theo scope | Mở rộng selection theo block/function |
| `Shift+Tab` | Thu nhỏ selection | Quay lại vùng chọn nhỏ hơn |

### Workflow Selection

```
1. Đặt cursor trong một biểu thức
2. Nhấn Enter → chọn biến/từ hiện tại
3. Nhấn Enter tiếp → chọn cả biểu thức
4. Nhấn Enter tiếp → chọn cả dòng/block
5. Nhấn Shift+Tab để thu nhỏ lại
```

---

## 9. 🧩 Mini.nvim Plugins

Bộ plugin mini cung cấp nhiều tính năng hữu ích:

### mini.ai - Text Objects Nâng Cao

Mở rộng text objects (dùng với `d`, `c`, `y`, `v`):

| Text Object | Mô tả | Ví dụ |
|-------------|-------|-------|
| `a)` / `i)` | Ngoặc tròn | `da)` xóa cả `(content)` |
| `a]` / `i]` | Ngoặc vuông | `ci]` thay đổi trong `[...]` |
| `a}` / `i}` | Ngoặc nhọn | `yi}` copy trong `{...}` |
| `aq` / `iq` | Quote (cả `'` và `"`) | `diq` xóa text trong quote |
| `af` / `if` | Function call | `daf` xóa cả function call |
| `aa` / `ia` | Argument | `cia` thay đổi argument |

### mini.surround - Thao Tác Với Ký Tự Bao Quanh

| Phím | Mô tả | Ví dụ |
|------|-------|-------|
| `sa` + motion + char | Thêm surround | `saiw"` → bao từ bằng `"` |
| `sd` + char | Xóa surround | `sd"` → xóa `"` bao quanh |
| `sr` + old + new | Thay đổi surround | `sr"'` → đổi `"` thành `'` |

```
Workflow:
- Có `hello` muốn thành `"hello"` → đặt cursor trên hello → saiw"
- Có `"hello"` muốn thành `'hello'` → đặt cursor trong → sr"'
- Có `(hello)` muốn xóa ngoặc → sd(
```

### mini.comment - Comment Code

| Phím | Mô tả |
|------|-------|
| `gc` + motion | Comment theo motion |
| `gcc` | Comment/uncomment dòng hiện tại |
| `gc` (Visual mode) | Comment vùng đã chọn |

```
Ví dụ:
- gcc → comment dòng hiện tại
- gc3j → comment 3 dòng tiếp theo
- V chọn nhiều dòng → gc → comment tất cả
```

### mini.move - Di Chuyển Dòng/Block

| Phím | Mô tả |
|------|-------|
| `Alt+h` | Di chuyển trái (Visual mode) |
| `Alt+j` | Di chuyển xuống |
| `Alt+k` | Di chuyển lên |
| `Alt+l` | Di chuyển phải (Visual mode) |

### mini.pairs - Tự Động Đóng Ngoặc

Tự động thêm ký tự đóng khi gõ:
- `(` → tự động thêm `)`
- `[` → tự động thêm `]`
- `{` → tự động thêm `}`
- `"` → tự động thêm `"`
- `'` → tự động thêm `'`

### mini.cursorword

Tự động highlight tất cả các từ giống với từ tại cursor.

### mini.indentscope

Hiển thị đường kẻ dọc cho indent scope hiện tại.

### mini.trailspace

Tự động highlight khoảng trắng thừa ở cuối dòng.

---

## 10. 🔀 Git Integration

### vim-fugitive (Git Commands)

| Lệnh | Mô tả |
|------|-------|
| `:Git` hoặc `:G` | Mở Git status |
| `:Git add %` | Stage file hiện tại |
| `:Git commit` | Commit với message |
| `:Git push` | Push lên remote |
| `:Git pull` | Pull từ remote |
| `:Git blame` | Xem blame cho file |
| `:Git diff` | Xem diff |
| `:Git log` | Xem commit history |
| `:Gvdiffsplit` | So sánh với version trước |

### gitsigns.nvim

Plugin này tự động hiển thị:
- 🟢 Dấu `+` ở cột bên trái cho dòng mới thêm
- 🔵 Dấu `~` cho dòng đã sửa
- 🔴 Dấu `-` cho dòng đã xóa

---

## 11. ⌨️ Autocomplete (nvim-cmp)

Khi popup gợi ý xuất hiện:

| Phím | Mô tả |
|------|-------|
| `Ctrl+j` | Chọn item tiếp theo |
| `Ctrl+k` | Chọn item trước đó |
| `Ctrl+b` | Cuộn docs lên |
| `Ctrl+f` | Cuộn docs xuống |
| `Ctrl+Space` | Mở popup gợi ý thủ công |
| `Ctrl+e` | Đóng popup |
| `Enter` | Xác nhận chọn |

### Nguồn Autocomplete (theo thứ tự ưu tiên)
1. 🤖 **Codeium** - AI suggestions
2. 📝 **LuaSnip** - Code snippets
3. 🅻 **nvim_lsp** - LSP completions
4. 📄 **buffer** - Từ trong file hiện tại
5. 📁 **path** - Đường dẫn file
6. ℹ️ **signature_help** - Function signatures

---

## 12. 🐛 Debug (DAP - Rust)

> ⚠️ Chỉ hoạt động với Rust projects

| Phím | Mô tả |
|------|-------|
| `<leader>dc` | Continue / Start debugging |
| `<leader>do` | Step over |
| `<leader>di` | Step into |
| `<leader>du` | Step out |
| `<leader>db` | Toggle breakpoint |
| `<leader>dr` | Open REPL |

---

## 13. 🔧 Các Tiện Ích Khác

### Which-Key

| Phím | Mô tả |
|------|-------|
| `<leader>?` | Hiển thị tất cả keymaps của buffer |

> 💡 **Tip**: Khi nhấn `<leader>` và đợi một chút, which-key sẽ tự động hiển thị các phím có thể nhấn tiếp!

### Chỉnh sửa Config

| Phím | Mô tả |
|------|-------|
| `<leader>rc` | Mở file config init.lua |

### Indent trong Visual Mode

| Phím | Mô tả |
|------|-------|
| `<` | Giảm indent (giữ selection) |
| `>` | Tăng indent (giữ selection) |

> 💡 Có thể nhấn nhiều lần mà không mất vùng chọn!

---

## 📊 Tổng Hợp LSP Servers Được Cấu Hình

| Server | Ngôn ngữ |
|--------|----------|
| `lua_ls` | Lua |
| `pyright` | Python |
| `gopls` | Go |
| `ts_ls` | TypeScript/JavaScript |
| `jsonls` | JSON |
| `bashls` | Bash/Shell |
| `clangd` | C/C++ |
| `dockerls` | Dockerfile |
| `emmet_ls` | HTML/CSS (Emmet) |
| `yamlls` | YAML |
| `tailwindcss` | Tailwind CSS |
| `solidity_ls` | Solidity |
| `efm` | Linting & Formatting |

---

## 🎨 Theme & UI

- **Colorscheme**: Duskfox (từ nightfox.nvim)
- **Transparent**: Có (background trong suốt)
- **Statusline**: Lualine với theme nightfox
- **Icons**: nvim-web-devicons

---

## ⚡ Auto Commands (Tự động chạy)

1. **Restore cursor position**: Tự động nhớ vị trí cursor khi mở lại file
2. **Highlight yank**: Highlight vùng vừa copy trong 200ms
3. **Format on save**: Tự động format code khi save (qua EFM)
4. **LSP keymaps**: Tự động kích hoạt keymaps LSP khi attach

---

## 📝 Options Quan Trọng

| Option | Giá trị | Mô tả |
|--------|---------|-------|
| `relativenumber` | true | Số dòng tương đối (dễ dùng với motion) |
| `scrolloff` | 10 | Luôn giữ 10 dòng trên/dưới cursor |
| `tabstop/shiftwidth` | 2 | Indent 2 spaces |
| `expandtab` | true | Dùng spaces thay tabs |
| `ignorecase` | true | Tìm kiếm không phân biệt hoa/thường |
| `smartcase` | true | Phân biệt hoa/thường nếu có chữ hoa |
| `undofile` | true | Lưu undo history vĩnh viễn |
| `clipboard` | unnamedplus | Dùng system clipboard |

---

## 🎯 Quick Reference Card

```
╔════════════════════════════════════════════════════════════════╗
║                    NEOVIM QUICK REFERENCE                      ║
╠════════════════════════════════════════════════════════════════╣
║  FILES          ║  LSP             ║  SEARCH                   ║
║  <leader>ff     ║  K hover         ║  <leader>fg live grep     ║
║  <leader>e tree ║  <leader>gd def  ║  <leader>fs symbols       ║
║  <leader>bn/bp  ║  <leader>ca act  ║  <leader>fr references    ║
║                 ║  <leader>rn ren  ║  <leader>fx diagnostics   ║
╠═════════════════╩══════════════════╩═══════════════════════════╣
║  WINDOWS        ║  EDIT            ║  GIT                      ║
║  <leader>sv/sh  ║  gcc comment     ║  :Git status              ║
║  Ctrl+hjkl nav  ║  sa surround     ║  :Git commit              ║
║  Ctrl+arrows    ║  < > indent      ║  :Git push/pull           ║
╠═════════════════╩══════════════════╩═══════════════════════════╣
║  COMPLETION: Ctrl+j/k navigate │ Ctrl+Space trigger │ Enter   ║
║  DIAGNOSTICS: <leader>xx trouble │ <leader>nd/pd jump         ║
╚════════════════════════════════════════════════════════════════╝
```

---

## 💡 Tips Workflow Hàng Ngày

### Khi bắt đầu làm việc:
1. `<leader>ff` → mở file cần làm việc
2. `<leader>e` → xem cấu trúc project nếu cần

### Khi viết code:
1. Gõ code → autocomplete tự động xuất hiện
2. `K` → xem documentation
3. `<leader>ca` → xem code actions nếu có gợi ý

### Khi debug lỗi:
1. `<leader>xx` → xem tất cả lỗi
2. `<leader>nd` → nhảy đến lỗi tiếp theo
3. `<leader>ca` → xem gợi ý sửa

### Khi refactor:
1. `<leader>rn` → đổi tên symbol
2. `<leader>fr` → xem tất cả references
3. `gcc` → comment code không cần

### Khi làm việc với Git:
1. `:Git` → xem status
2. `:Git add %` → stage file hiện tại
3. `:Git commit` → commit

---

> 📅 Tạo ngày: 2026-02-05
> 🔧 Neovim Config by Thanh Nguyen
