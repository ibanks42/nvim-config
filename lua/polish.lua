-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

vim.api.nvim_set_keymap("n", "H", "^", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "H", "^", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "L", "$", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "L", "$", { noremap = true, silent = true })

if not vim.g.vscode then
  require("tailwind-sorter").setup {
    on_save_enabled = true, -- If `true`, automatically enables on save sorting.
    on_save_pattern = { "*.html", "*.js", "*.jsx", "*.tsx", "*.twig", "*.hbs", "*.php", "*.heex", "*.astro" }, -- The file patterns to watch and sort.
    node_path = "node",
  }
  require("rose-pine").setup {
    variant = "moon", -- auto, main, moon, or dawn
    dim_inactive_windows = false,
    extend_background_behind_borders = true,
    enable = { terminal = true },
    styles = {
      bold = true,
      italic = false,
      transparency = false,
    },
  }

  local Path = require "plenary.path"
  local config = require "session_manager.config"
  local session_manager = require "session_manager"
  session_manager.setup {
    sessions_dir = Path:new(vim.fn.stdpath "data", "sessions"), -- The directory where the session files will be saved.
    autoload_mode = config.AutoloadMode.LastSession, -- Define what to do when Neovim is started without arguments. Possible values: Disabled, CurrentDir, LastSession
    autosave_last_session = true, -- Automatically save last session on exit and on session switch.
    autosave_ignore_filetypes = { -- All buffers of these file types will be closed before the session is saved.
      "gitcommit",
      "gitrebase",
    },
    autosave_only_in_session = false, -- Always autosaves session. If true, only autosaves after a session is active.
    max_path_length = 0, -- Shorten the display path if length exceeds this threshold. Use 0 if don't want to shorten the path at all.
  }

  -- Auto save session
  vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    callback = function()
      for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        -- Don't save while there's any 'nofile' buffer open.
        if vim.api.nvim_get_option_value("buftype", { buf = buf }) == "nofile" then return end
      end
      session_manager.save_current_session()
    end,
  })

  local config_group = vim.api.nvim_create_augroup("MyConfigGroup", {}) -- A global group for all your config autocommands

  vim.api.nvim_create_autocmd({ "User" }, {
    pattern = "SessionLoadPost",
    group = config_group,
    callback = function()
      -- open neo-tree on loading session
      vim.cmd "Neotree show"
    end,
  })
  vim.opt.termguicolors = true
  vim.opt.scrolloff = 8
  vim.cmd "colorscheme catppuccin"
end

if vim.g.neovide then
  vim.g.neovide_transparency = 0.95
  vim.g.transparency = 0
  vim.opt.guifont = "B612MonoLigaNerdFont Nerd Font:h12"
  vim.g.neovide_remember_window_size = true
  vim.api.nvim_set_keymap("n", "<F11>", ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
end
