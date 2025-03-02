return {
  -- Tmux Navigation
  {
    "christoomey/vim-tmux-navigator",
    lazy = false,
  },
  {
    "tmux-plugins/vim-tmux-focus-events",
    lazy = false,
  },
  {
    "aserowy/tmux.nvim",
    lazy = false,
    config = function()
      require("tmux").setup({
        navigation = { enable_default_keybindings = true },
        resize = { enable_default_keybindings = true },
      })
    end,
  },
  {
    "numToStr/Navigator.nvim",
    lazy = false,
    config = function()
      require("Navigator").setup({
        auto_save = "current", -- Save current buffer before navigating
        disable_on_zoom = false, -- Allow navigation when zoomed
        mux = {
          enabled = true,
          navigate = {
            left = "h",
            right = "l",
            down = "j",
            up = "k",
          },
          new = "c", -- Keybinding for creating new tmux window
          __index = "index", -- Dummy value for index
          zoomed = "z", -- Keybinding for zooming tmux pane
        },
      })

      -- Key mappings for Navigator
      vim.keymap.set({ "n", "t" }, "<C-h>", "<CMD>NavigatorLeft<CR>")
      vim.keymap.set({ "n", "t" }, "<C-l>", "<CMD>NavigatorRight<CR>")
      vim.keymap.set({ "n", "t" }, "<C-j>", "<CMD>NavigatorDown<CR>")
      vim.keymap.set({ "n", "t" }, "<C-k>", "<CMD>NavigatorUp<CR>")
    end,
  },
  {
    "vimpostor/vim-tpipeline",
    lazy = false,
  },
}
