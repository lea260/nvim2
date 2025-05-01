return {
  {
    "stevearc/conform.nvim",
    optional = true,
    event = { "BufWritePre" },
    config = function()
      -- Aquí es donde debes pegar la configuración que te proporcioné
      require("conform").setup({
        formatters_by_ft = {
          sh = { "shfmt" },
        },
        format_on_save = {
          lsp_fallback = true,
          async = false,
          timeout_ms = 1000,
        },
      })
    end,
    dependencies = { "mason.nvim" },
  },
  -- Otros plugins de formateo o linters podrían estar definidos aquí
}
