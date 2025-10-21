local prettier = require("prettier")

prettier.setup({
  bin = 'prettierd',
  cli_options = {
          tab_width = 4,
          bracketSameLine = true,

  },
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },
})
