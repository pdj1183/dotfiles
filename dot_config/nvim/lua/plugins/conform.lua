return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- Lua
      lua = { "stylua" },

      -- Python
      python = { "black" }, --"isort"

      -- JavaScript/TypeScript
      javascript = { "prettierd", "prettier", stop_after_first = true },
      typescript = { "prettierd", "prettier", stop_after_first = true },
      javascriptreact = { "prettierd", "prettier", stop_after_first = true },
      typescriptreact = { "prettierd", "prettier", stop_after_first = true },

      -- Web
      html = { "prettierd", "prettier", stop_after_first = true },
      css = { "prettierd", "prettier", stop_after_first = true },
      scss = { "prettierd", "prettier", stop_after_first = true },
      json = { "prettierd", "prettier", stop_after_first = true },
      jsonc = { "prettierd", "prettier", stop_after_first = true },
      yaml = { "prettierd", "prettier", stop_after_first = true },
      markdown = { "prettierd", "prettier", stop_after_first = true },

      -- Go
      -- go = { "goimports", "gofmt" },

      -- Rust
      -- rust = { "rustfmt", lsp_format = "fallback" },

      -- Shell
      sh = { "shfmt" },
      bash = { "shfmt" },

      -- C/C++
      c = { "clang_format" },
      cpp = { "clang_format" },

      -- Java
      -- java = { "google-java-format" },

      -- Ruby
      -- ruby = { "rubocop" },

      -- SQL
      -- sql = { "sql_formatter" },
    },
    formatters = {
      clang_format = {
        prepend_args = {
          "--style={BasedOnStyle: LLVM, IndentWidth: 4, TabWidth: 4, UseTab: Never, ColumnLimit: 100}",
        },
      },
    },
  },
}
