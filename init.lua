-- ──────────────────────────────────────────────
--  LazyVim + Tokyo Night Clean Init
--  Verified for October 2025 structure
-- ──────────────────────────────────────────────

-- Bootstrap lazy.nvim if it isn't installed
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- ──────────────────────────────────────────────
--  Lazy setup
-- ──────────────────────────────────────────────
require("lazy").setup({

  spec = {
    -- Core LazyVim framework
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },

    -- UI + Editor extras (valid in current version)
    { import = "lazyvim.plugins.extras.editor.mini-files" },

    -- Language extras that exist in this version
    { import = "lazyvim.plugins.extras.lang.json" },
    { import = "lazyvim.plugins.extras.lang.yaml" },
    { import = "lazyvim.plugins.extras.lang.python" },

    -- Add your custom plugins below
    { import = "plugins" },

    -- Tokyo Night theme (added manually — no longer bundled)
    { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} },
  },

  defaults = {
    lazy = false,
    version = false, -- always use latest git commit
  },

  install = { colorscheme = { "tokyonight", "habamax" } },

  checker = { enabled = true }, -- auto plugin update check
})

-- ──────────────────────────────────────────────
--  Appearance & LSP Hook Fix
-- ──────────────────────────────────────────────

-- Use Snacks LSP hook (fixes LazyVim.lsp.on_attach deprecation)
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    if client then
      require("snacks.util.lsp").on(client, args.buf)
    end
  end,
})

-- Tokyo Night colorscheme
vim.cmd.colorscheme("tokyonight")

-- Optional: UI tweaks for consistent Tokyo Night visuals
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.cursorline = true
