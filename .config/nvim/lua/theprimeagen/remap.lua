vim.g.copilot_no_tab_map = true
vim.g.mapleader = " "
vim.g.mapleader = "<Space>"
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", ':NvimTreeToggle<CR>')

-- Common operations
vim.keymap.set('n', '<leader>l', ':nohl<CR>', { noremap = true, silent = true, desc = 'Clear search highlighting' })
vim.keymap.set('n', '<leader>ss', ':vsp<CR>', { noremap = true, silent = true, desc = 'Split vertically' })
--vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = true, desc = 'Save file' })
vim.keymap.set('n', '<leader>w', function()
  pcall(vim.lsp.buf.format, { async = false })
  vim.cmd('w') -- Save the file if formatting was successful
end, { noremap = true, silent = true, desc = 'Format and save file' })

-- Tab navigation and management
vim.keymap.set('n', '<leader>t', 'gt', { noremap = true, silent = true, desc = 'Go to next tab' })
vim.keymap.set('n', '<leader>n', ':tabnew<CR>', { noremap = true, silent = true, desc = 'New tab' })
vim.keymap.set('n', '<leader>m', ':tabmove', { noremap = true, desc = 'Move tab' })
vim.keymap.set('n', '<leader>c', ':close<CR>', { noremap = true, silent = true, desc = 'Close window' })
vim.keymap.set('n', '<leader><S-c>', ':tabclose<CR>', { noremap = true, silent = true, desc = 'Close tab' })
vim.keymap.set('n', '<leader>o', ':tabonly<CR>', { noremap = true, silent = true, desc = 'Close other tabs' })

-- NERDTree toggle (Note: Consider using nvim-tree.lua for native neovim file explorer)
-- vim.keymap.set('n', '<leader>e', ':NERDTreeToggle<CR>', { noremap = true, silent = true, desc = 'Toggle file explorer' })

--
-- Clipboard operations
vim.keymap.set({ 'n', 'v' }, '<leader>y', '"+y', { noremap = true, silent = true, desc = 'Copy to system clipboard' })
--
-- I SEE YOU AGAIN MY OLD FRIEND :(
-- vim.keymap.set('n', '<leader>p', '"+p', { noremap = true, silent = true, desc = 'Paste from system clipboard' })
-- I SEE YOU AGAIN MY OLD FRIEND :(

-- Window navigation
vim.keymap.set('n', '<leader>r', '<C-w>w', { noremap = true, silent = true, desc = 'Cycle through windows' })

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

--vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
--vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set(
  "n",
  "<leader>ea",
  "iconsole.log(\"\")<Esc>F\";a"
)

vim.keymap.set('n', '<leader>d', function()
  vim.lsp.buf.definition()

  vim.cmd("cclose") -- Closes the Quickfix window after jumping to definition
end)
