return {
  -- 🌙 Tokyo Night Theme
  { "folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {} },

  -- 🌳 Treesitter (syntax highlighting)
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

  -- 📊 Lualine (statusline)
  { "nvim-lualine/lualine.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

  -- 🔍 Telescope (fuzzy finder)
  { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } },

  -- 📁 Nvim-tree (file explorer)
  { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" } },

  -- 💡 Which-key (keymap hints)
  { "folke/which-key.nvim", event = "VeryLazy", opts = {} },
}
