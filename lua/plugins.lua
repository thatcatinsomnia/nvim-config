-- setup lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { "rose-pine/neovim", name = "rose-pine" },
    { 
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
    { "nvim-treesitter/nvim-treesitter-textobjects" },
    {
        "nvim-telescope/telescope.nvim", tag = "0.1.6",
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    { "nvim-tree/nvim-web-devicons" },
    { "prichrd/netrw.nvim" },
    { "mbbill/undotree" },
    { "tpope/vim-fugitive" }
})

