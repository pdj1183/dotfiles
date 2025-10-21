require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c", "lua", "javascript", "html", "tsx", "typescript", "vim", "vimdoc", "query"
  },
  auto_install = true,
  highlight = { enable = true },
  context_commentstring = { enable = true },
}

require('nvim-ts-autotag').setup()
