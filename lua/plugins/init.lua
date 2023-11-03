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

require("lazy").setup({

    -- FileExplorer
    {"nvim-tree/nvim-tree.lua"},
    {"nvim-tree/nvim-web-devicons"},

    -- Mason, cmp, lsp
    {
        "williamboman/mason.nvim",
        opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_uninstalled = "✗",
                    package_pending = "⟳",
                },
            },
        },
    },
    {"williamboman/mason-lspconfig.nvim"},
    {"neovim/nvim-lspconfig"},
    {"hrsh7th/nvim-cmp"},
    {"hrsh7th/cmp-nvim-lsp"},

    -- Debugging 

    -- Themes
    {"catppuccin/nvim"},
    {"sainnhe/gruvbox-material"},
    {"sainnhe/everforest"},

    -- Other
    {"nvim-treesitter/nvim-treesitter"},
    {"nvim-telescope/telescope.nvim"},
    {"nvim-lua/plenary.nvim"},
    {"akinsho/toggleterm.nvim"},
    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {},
    },
    {
        "NMAC427/guess-indent.nvim",
        opts = {},
    },
    {
        "numToStr/Comment.nvim",
        opts = {},
    },

    -- StatusLine
    {"nvim-lualine/lualine.nvim"},

    -- Bufferline
    {"akinsho/bufferline.nvim"},
})
