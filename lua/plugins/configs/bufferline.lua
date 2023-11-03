require("bufferline").setup({
    options = {
        diagnostics = "nvim_lsp",
        offsets = {
            {
                filetype = "NvimTree",
                text = "Explorer",
                highlight = "Directory",
                text_align = "center",
            },
        },
    },
})
