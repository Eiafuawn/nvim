vim.g.mapleader = " "
vim.keymap.set("n", "<leader>q", "<cmd>:wq<CR>")
vim.keymap.set("n", "<leader>t", "<cmd>:Alpha<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
vim.keymap.set("x", "<leader>dp", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set("n", "<leader>yp", [["+p]])
vim.keymap.set("n", "<leader>yP", [["+P]])
vim.keymap.set({ "n", "v" }, "<leader>yy", [["+y]])
vim.keymap.set("n", "<leader>yY", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>F", vim.lsp.buf.format)

vim.keymap.set("n", "<A-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<A-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })
vim.keymap.set("n", "<leader>so", function() vim.cmd("so") end)

vim.keymap.set("n", "<leader>ee", "<cmd>:NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>ep", "<cmd>e ~/.config/nvim/lua/myschkin/plugins.lua<CR>");
vim.keymap.set('n', '<leader><space>', function() require('telescope.builtin').buffers { sort_lastused = true } end)
vim.keymap.set('n', '<leader>ff', function() require('telescope.builtin').find_files { previewer = false } end)
vim.keymap.set('n', '<leader>fb', function() require('telescope.builtin').current_buffer_fuzzy_find() end)
vim.keymap.set('n', '<leader>fh', function() require('telescope.builtin').help_tags() end)
vim.keymap.set('n', '<leader>ft', function() require('telescope.builtin').tags() end)
vim.keymap.set('n', '<leader>fd', function() require('telescope.builtin').grep_string() end)
vim.keymap.set('n', '<leader>fp', function() require('telescope.builtin').live_grep() end)
vim.keymap.set('n', '<leader>?', function() require('telescope.builtin').oldfiles() end)

-- See after/plugins/harpoon.lua for "<leader>h" remaps

vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)

vim.keymap.set("n", "<leader>gg", "<cmd>LazyGit<CR>");
vim.keymap.set("n", "<C-t>", "<Cmd>ToggleTerm<CR>")

function _G.set_terminal_keymaps()
  local opts = { buffer = 0 }
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end
vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', {noremap = true})

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')


vim.keymap.set('n', '<C-K>', '<cmd>lua vim.diagnostic.open_float(nil, { focusable = false })<CR>',
  { noremap = true, silent = true })
