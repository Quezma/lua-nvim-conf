-- general maps
vim.api.nvim_set_keymap("n", "<Leader><Leader>", ":noh<cr>", {silent = true, noremap = true})

-- explorer maps
vim.api.nvim_set_keymap("n", "<Leader>nn", ":NvimTreeToggle<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>nf", ":NvimTreeFindFile<cr>", {silent = true, noremap = true})

-- buffer maps
vim.api.nvim_set_keymap("n", "<Leader>bn", ":bn<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>bb", ":bp<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<Leader>bd", ":bd<cr>", {silent = true, noremap = true})

-- telescope
local telescope = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', telescope.find_files, {})
vim.keymap.set('n', '<leader>fg', telescope.live_grep, {})
vim.keymap.set('n', '<leader>fb', telescope.buffers, {})
vim.keymap.set('n', '<leader>fh', telescope.help_tags, {})
vim.keymap.set('n', '<leader>fc', telescope.commands, {})
vim.keymap.set('n', '<leader>fk', telescope.keymaps, {})
