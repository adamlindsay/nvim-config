return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup()
    require("nvim-treesitter").install({
      "ruby", "typescript", "tsx", "bash",
      "lua", "markdown", "markdown_inline",
      "json", "toml", "vim", "vimdoc",
    })
    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "ruby", "typescript", "javascript", "tsx",
        "bash", "sh", "lua", "markdown",
        "json", "toml", "vim",
      },
      callback = function() vim.treesitter.start() end,
    })
  end,
}
