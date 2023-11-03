require("lualine").setup({
    options = {
        theme = "auto",
    },
    sections = {
        lualine_a = {"mode"},
        lualine_b = {"filetype"},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {"progress"},
        lualine_z = {"location"},
    },
})
