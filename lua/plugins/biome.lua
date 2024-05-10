return {
  "stevearc/conform.nvim",
  opts = {
    -- Use a sub-list to run only the first available formatter
    formatters_by_ft = {
      javascript = { { "biome" } },
    },
  },
}
