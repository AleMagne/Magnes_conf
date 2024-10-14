-- general

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.showmode = false
vim.opt.breakindent = true
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.opt.undofile = true
vim.opt.inccommand = "split"

vim.opt.scrolloff = 25
vim.opt.clipboard = "unnamed"

vim.opt.virtualedit = "block"
vim.opt.inccommand = "split"
vim.opt.ignorecase = true

vim.opt.termguicolors = true

-- numbers
vim.opt.number = true
vim.opt.relativenumber = true

--splits
vim.opt.splitbelow = true
vim.opt.splitright = true

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true

-- some innocent tomfoolery
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

-- windows and tab
vim.keymap.set("n", "<Leader>al", "<C-w>l", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<Leader>ah", "<C-w>h", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<Leader>aj>", "<C-w>j", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<Leader>ak>", "<C-w>k", { desc = "Move focus to the upper window" })
vim.keymap.set("n", "<Leader>an", function()
	vim.cmd("Vex")
end, { desc = "Create new verical split" })

vim.keymap.set("n", "<Leader>tn", function()
	vim.cmd("tabnew")
	vim.cmd("Ex")
end, { silent = true, desc = "Create a new window with the Ex file manager opened" })

vim.keymap.set("n", "<Leader>tc", ":tabclose<CR>", {
	silent = true,
	desc = "Close the current tab",
})

vim.keymap.set("n", "<Leader>tk", ":tabnext<CR>", {
	silent = true,
	desc = "Next tab",
})

vim.keymap.set("n", "<Leader>tj", ":tabprevious<CR>", {
	silent = true,
	desc = "Previus tab",
})
