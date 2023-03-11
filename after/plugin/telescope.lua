local builtin = require("telescope.builtin")
local telescope = require("telescope")


telescope.load_extension("workspaces")


vim.keymap.set("n", "<leader>ff", builtin.live_grep, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
