local builtin = require('telescope.builtin')


vim.keymap.set('n', '<leader>ff', builtin.live_grep, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
