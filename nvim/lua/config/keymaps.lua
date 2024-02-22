local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- Directory Navigation
keymap.set("n", "<leader>m", ":NvimTreeFocus<CR>", opts)
keymap.set("n", "<leader>f", ":NvimTreeToggle<CR>", opts)

-- Paend Window Navigation
keymap.set("n", "<C-h>", "<C-w>h", opts) -- Navigate Left
keymap.set("n", "<C-j>", "<C-w>j", opts) -- Navigate Down
keymap.set("n", "<C-k>", "<C-w>k", opts) -- Navigate Up
keymap.set("n", "<C-l>", "<C-w>l", opts) -- Navigate Right
-- keymap.set("<C-h>", "wincmd h", "t") -- Navigate Left
-- keymap.set("<C-j>", "wincmd j", "t") -- Navigate Down
-- keymap.set("<C-k>", "wincmd k", "t") -- Navigate Up
--keymap.set("<C-l>", "wincmd l", "t") -- Navigate Right
--keymap.set("<C-h>", "TmuxNavigateLeft", "n") -- Navigate Left
--keymap.set("<C-j>", "TmuxNavigateDown", "n") -- Navigate Down
--keymap.set("<C-k>", "TmuxNavigateUp", "n") -- Navigate Up

keymap.set("n", "sv", ":vsplit<CR>", opts) -- Split Vertically
keymap.set("n", "sh", ":split<CR>", opts) -- Split Horizontally
keymap.set("n", "sm", ":MaximizerToggle<CR>", opts) -- Toggle Minimise
keymap.set("n", "sx", ":close<CR>", opts) -- close current split window

--- Tab
keymap.set("n", "to", ":tabnew<CR>") -- open new tab
keymap.set("n", "tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "tp", ":tabp<CR>") --  go to previous tab

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- Indenting
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Show Full File-Path
--keymap.set("<leader>pa", "echo expand('%:p')", "n") -- Show Full File Path

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gcc", { noremap = false }) -- Ctrl + /
vim.api.nvim_set_keymap("v", "<C-_>", "gcc", { noremap = false }) -- Ctrl + /
