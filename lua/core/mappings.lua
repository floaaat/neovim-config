local map = vim.keymap.set

-- Basic
map("n", "<leader>w", "<cmd>w<cr>")
map("n", "<leader>W", "<cmd>w!<cr>")
map("n", "<leader>q", "<cmd>q<cr>")
map("n", "<leader>Q", "<cmd>qa!<cr>")

-- Indents
map("v", "<Tab>", ">gv")
map("v", "<S-Tab>", "<gv")

-- ToggleTerm
map("n", "<F7>", "<cmd>ToggleTerm direction=float<cr>")
map("t", "<F7>", "<cmd>ToggleTerm direction=float<cr>")

-- Neotree
map("n", "<leader>e", "<cmd>NvimTreeToggle<cr>")
map("n", "<leader>o", "<cmd>NvimTreeFocus<cr>")

-- Debugging

-- Lsp
vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>la', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<space>f', function()
      vim.lsp.buf.format { async = true }
    end, opts)
  end,
})

-- Mason
map("n", "<leader>pm", "<cmd>Mason<cr>")

-- Lazy
map("n", "<leader>pl", function() require("lazy").home() end)

-- Telescope
map("n", "<leader>fw", function()
  require("telescope.builtin").live_grep() end)

map("n", "<leader>ff", function()
  require("telescope.builtin").find_files() end)

map("n", "<leader>fa", function()
  require("telescope.builtin").find_files({
    hidden = true,
    no_ignore = true,
  })
end)

map("n", "<leader>fc", function()
  require("telescope.builtin").commands() end)

map("n", "<leader>ft", function()
  require("telescope.builtin").colorscheme({
    enable_preview = true
  })
end)

map("n", "<leader>fb", function()
  require("telescope.builtin").buffers() end)
