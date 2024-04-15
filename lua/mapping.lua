--clear search
vim.api.nvim_set_keymap("n", "<Leader><Leader>", ":noh<cr>", {silent = true, noremap = true})

-- Explorer
vim.api.nvim_set_keymap("n", "<Leader>nn", ":NvimTreeToggle<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>nf", ":NvimTreeFindFile<cr>", {silent = true, noremap = true})

-- Mason
vim.api.nvim_set_keymap('n', '<Leader>m', ':Mason<CR>', { noremap = true, silent = true })

-- buffer maps
vim.api.nvim_set_keymap("n", "<Leader>bn", ":bn<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>bb", ":bp<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>bd", ":bd<cr>", {silent = true, noremap = true})

-- markdown previwer
vim.api.nvim_set_keymap("n", "<Leader>mp", ":MarkdownPreview<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>ms", ":MarkdownPreviewStop<cr>", {silent = true, noremap = true})
