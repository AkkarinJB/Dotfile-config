return {
  {
    "EdenEast/nightfox.nvim",
    priority = 1000,
    lazy = true,
    config = function()
      vim.cmd.colorscheme("carbonfox")
    end,
  },
}
