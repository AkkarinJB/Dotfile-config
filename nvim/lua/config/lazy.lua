local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Configure Lazy.nvim
require("lazy").setup({
  spec = {
    -- Add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    { import = "lazyvim.plugins.extras.lang.java" },
    { import = "lazyvim.plugins.extras.lang.json" },
    { import = "lazyvim.plugins.extras.lang.python" },
    { import = "lazyvim.plugins.extras.lang.tailwind" },
    { import = "lazyvim.plugins.extras.lang.tex" },
    { import = "lazyvim.plugins.extras.lang.typescript" },
    { import = "lazyvim.plugins.extras.lang.yaml" },
    { import = "lazyvim.plugins.extras.lang.angular" }, -- Added support for Angular

    -- Import your own plugins
    { import = "plugins" },

    -- Navigator.nvim for tmux and nvim navigation
    {
      "numToStr/Navigator.nvim",
      lazy = false,
      config = function()
        require("Navigator").setup({
          auto_save = "current",
          disable_on_zoom = false,
        })

        -- Key mappings for Navigator
        vim.keymap.set({ "n", "t" }, "<C-h>", "<CMD>NavigatorLeft<CR>")
        vim.keymap.set({ "n", "t" }, "<C-l>", "<CMD>NavigatorRight<CR>")
        vim.keymap.set({ "n", "t" }, "<C-j>", "<CMD>NavigatorDown<CR>")
        vim.keymap.set({ "n", "t" }, "<C-k>", "<CMD>NavigatorUp<CR>")
        vim.g.tmux_navigator_no_mappings = 1
      end,
    },

    -- Nightfox theme (backup option)
    {
      "EdenEast/nightfox.nvim",
      config = function()
        require("nightfox").setup({
          options = {
            transparent = true,
            terminal_colors = true,
            styles = {
              comments = "italic",
              keywords = "bold",
              functions = "italic,bold",
            },
          },
          palettes = {
            nightfox = {
              bg = "#1e2029",
              fg = "#cdd6f4",
              blue = "#89b4fa",
              green = "#a6e3a1",
              yellow = "#f9e2af",
            },
          },
        })
        vim.cmd("colorscheme nightfox")
      end,
    },
  },

  defaults = {
    lazy = false, -- Do not lazy-load plugins by default
    version = false, -- Always use the latest git commit
  },

  -- Configure default colorschemes
  install = { colorscheme = { "nightfox" } },

  -- Plugin update checker settings
  checker = {
    enabled = true, -- Enable automatic plugin updates
    notify = false, -- Disable notifications for updates
  },

  -- Performance settings
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
