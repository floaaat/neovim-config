require("nvim-treesitter.configs").setup({
  sync_install = false,
  auto_install = true,
  highlight = { enable = true },
})

require("toggleterm").setup({
  shell = "flatpak-spawn --env=TERM=$TERM bash",
  float_opts = {
    border = "curved",
  },
})

require("nvim-tree").setup({
  view = {
    width = 25,
  },
})
