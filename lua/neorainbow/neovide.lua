if vim.g.neovide then
	local keymapOpts = {
		silent = true,
		noremap = true
	}
	vim.keymap.set({"n","v"}, "<C-v>", "\"*p", keymapOpts)
	vim.keymap.set({"n","v"}, "<C-c>", "\"*y", keymapOpts)
	vim.keymap.set({"n","v"}, "<C-x>", "\"*x", keymapOpts)
end
