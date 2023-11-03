local opt = vim.opt

opt.mouse = "a"

opt.clipboard = "unnamedplus"
opt.swapfile = false
opt.hidden = true
opt.history = 100
opt.showmode = false
opt.cmdheight = 0

opt.number = true
opt.foldenable = false
opt.foldmethod = "indent"
opt.wrap = false
opt.termguicolors = true
opt.laststatus = 3

opt.splitright = true
opt.splitbelow = true

opt.ignorecase = true
opt.smartcase = true

opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.smartindent = true

opt.shortmess:append "I"
opt.fillchars = {
    eob = " ",
    vert = " ",
    vertleft = " ",
    vertright = " ",
    verthoriz = " ",
    horiz = " ",
    horizup = " ",
    horizdown = " ",
}
