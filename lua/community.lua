if vim.g.vscode then return {
  "astrocommunity.motion.leap-nvim",
} end

-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.colorscheme.vim-dogrun" },

  { import = "astrocommunity.terminal-integration.toggleterm-manager-nvim" },
  { import = "astrocommunity.recipes.heirline-nvchad-statusline" },

  { import = "astrocommunity.editing-support.nvim-treesitter-context" },
  { import = "astrocommunity.motion.leap-nvim" },

  { import = "astrocommunity.completion.copilot-lua-cmp" },

  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.zig" },

  -- import/override with your plugins folder
}
