require("conform").setup({
  format_on_save = {
    lsp_format = "fallback",
    timeout_ms = 500,
  },
  formatters_by_ft = {
    c = { "clang-format" },
    cpp = { "clang-format" },
    css = { "biome" },
    html = { "biome" },
    javascript = { "biome" },
    lua = { "stylua" },
    haskell = { "ormolu" },
    python = { "ruff" },
    typescript = { "biome" },
  },
})
