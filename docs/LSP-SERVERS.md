# 🛠️ LSP Servers Configuration

> Chi tiết về tất cả Language Server Protocol (LSP) servers được cấu hình.

## 📊 Tổng Quan

| Số lượng | Loại |
|----------|------|
| 13 | LSP servers |
| 10 | Linters (qua EFM) |
| 9 | Formatters (qua EFM) |

---

## 🔧 LSP Servers

### Core Language Servers

| Server | Ngôn ngữ | Filetypes | Config File |
|--------|----------|-----------|-------------|
| `lua_ls` | Lua | lua | `servers/lua_ls.lua` |
| `pyright` | Python | python | `servers/pyright.lua` |
| `gopls` | Go | go | `servers/gopls.lua` |
| `ts_ls` | TypeScript/JS | ts, js, tsx, jsx | `servers/ts_ls.lua` |
| `clangd` | C/C++ | c, cpp | `servers/clangd.lua` |

### Web Development

| Server | Ngôn ngữ | Filetypes | Config File |
|--------|----------|-----------|-------------|
| `emmet_ls` | Emmet | ts, js, css, sass, svelte, vue | `servers/emmet_ls.lua` |
| `tailwindcss` | Tailwind CSS | ts, js, tsx, jsx, vue, svelte | `servers/tailwindcss.lua` |

### Data & Config

| Server | Ngôn ngữ | Filetypes | Config File |
|--------|----------|-----------|-------------|
| `jsonls` | JSON | json, jsonc | `servers/jsonls.lua` |
| `yamlls` | YAML | yaml | `servers/yamlls.lua` |

### DevOps & Others

| Server | Ngôn ngữ | Filetypes | Config File |
|--------|----------|-----------|-------------|
| `bashls` | Bash/Shell | sh, bash, zsh | `servers/bashls.lua` |
| `dockerls` | Dockerfile | dockerfile | `servers/dockerls.lua` |
| `solidity_ls` | Solidity | solidity | `servers/solidity_ls_nomicfoundation.lua` |

### Linters & Formatters

| Server | Mục đích | Config File |
|--------|----------|-------------|
| `efm` | Linting & Formatting | `servers/efm-langserver.lua` |

---

## 🔍 EFM Language Server - Linters

| Linter | Ngôn ngữ | Mô tả |
|--------|----------|-------|
| `luacheck` | Lua | Static analyzer |
| `flake8` | Python | Style checker |
| `go_revive` | Go | Linter |
| `eslint_d` | JS/TS/React/Vue/Svelte | JavaScript linter (daemon) |
| `shellcheck` | Bash | Shell script analyzer |
| `hadolint` | Dockerfile | Dockerfile linter |
| `cpplint` | C/C++ | Google style linter |
| `solhint` | Solidity | Solidity linter |

---

## 🎨 EFM Language Server - Formatters

| Formatter | Ngôn ngữ | Mô tả |
|-----------|----------|-------|
| `stylua` | Lua | Opinionated formatter |
| `black` | Python | PEP 8 formatter |
| `gofumpt` | Go | Strict gofmt |
| `prettier_d` | JS/TS/HTML/CSS/JSON/Markdown | Code formatter (daemon) |
| `fixjson` | JSON | JSON fixer |
| `shfmt` | Bash | Shell formatter |
| `clang_format` | C/C++ | LLVM formatter |

---

## 📋 EFM Filetypes Coverage

```lua
filetypes = {
  "c", "cpp",              -- C/C++
  "css",                   -- CSS
  "docker",                -- Dockerfile
  "go",                    -- Go
  "html",                  -- HTML
  "javascript", "javascriptreact",  -- JavaScript
  "json", "jsonc",         -- JSON
  "lua",                   -- Lua
  "markdown",              -- Markdown
  "python",                -- Python
  "sh",                    -- Shell
  "solidity",              -- Solidity
  "svelte",                -- Svelte
  "typescript", "typescriptreact",  -- TypeScript
  "vue",                   -- Vue
}
```

---

## ⚙️ Server Settings Chi Tiết

### lua_ls
```lua
settings = {
  Lua = {
    diagnostics = { globals = { "vim" } },
    workspace = {
      library = { vim.fn.expand("$VIMRUNTIME/lua"), ... }
    }
  }
}
```

### pyright
```lua
settings = {
  pyright = {
    disableOrganizeImports = false,
    analysis = {
      useLibraryCodeForTypes = true,
      autoSearchPaths = true,
      diagnosticMode = "workspace",
      autoImportCompletions = true,
    }
  }
}
```

### ts_ls
```lua
settings = {
  typescript = {
    indentStyle = "space",
    indentSize = 2,
  }
}
```

### yamlls
```lua
settings = {
  yaml = {
    schemas = {
      ["https://json.schemastore.org/composer.json"] = "composer.json",
      ["https://json.schemastore.org/docker-compose.json"] = "docker-compose*.yml",
    },
    validate = true,
    format = { enable = true }
  }
}
```

### clangd
```lua
cmd = { "clangd", "--offset-encoding=utf-16" }
```

---

## 🔑 LSP Keymaps (on_attach)

Xem chi tiết tại [CHEATSHEET.md](./CHEATSHEET.md#6--lsp---hỗ-trợ-code)

---

## 📅 Cập Nhật

- **2026-02-05**: Tạo documentation LSP servers ban đầu
