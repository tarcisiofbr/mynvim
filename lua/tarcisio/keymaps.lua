-- [[ Basic Keymaps ]]

-- General
vim.keymap.set('n', "<leader>'", '<C-^>', { desc = 'Go to previous buffer' })
vim.keymap.set('n', '<C-j>', '5<C-e>')
vim.keymap.set('n', '<C-k>', '5<C-y>')
vim.keymap.set('n', '<leader>w', '<C-w>')
vim.keymap.set('n', '<leader>,', ':split<CR>:terminal<cr>', { desc = 'Open terminal' })
vim.keymap.set('n', '<leader>z', ':w<CR>:source ~/.config/nvim/init.lua<CR>', { desc = 'source init.lua' })
vim.keymap.set('n', '<leader>bq', ':bd<CR>', { desc = 'close current buffer' })
vim.keymap.set('n', 'zz', 'zt<S-l>10j<S-H>', { desc = 'current line to top' })
vim.keymap.set('n', 'tk', '<C-w>t<C-w>K15<C-w>-', { desc = 'current line to top' })
vim.keymap.set('i', '<C-z>', '<C-x><C-f>', { desc = 'current line to top' })




-- Outline
vim.keymap.set('n', '<leader>n', ':Outline<CR>:set number relativenumber<CR>', { desc = 'Open buffer outline' })
vim.keymap.set('n', '<leader>u', ':Outline<CR>:Outline<CR>', { desc = 'Open buffer outline' })

-- Neo-tree
vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>:set number relativenumber<CR>', { desc = 'Toggle file tree' })

-- Writing text
vim.keymap.set('n', '<leader>tf', ':set wrap linebreak<CR>', { desc = 'Wrap text for better editing notes' })
vim.keymap.set('n', '<leader>tu', ':set nowrap nolinebreak<CR>', { desc = 'Reset wrapping' })

-- Execute codes in interactive mode
-- vim.keymap.set('n', '<leader>rl', 'yy<C-w>wpi<CR><C-\\><C-n><C-w>wj', { desc = 'run line and go to the next line' })
-- vim.keymap.set('n', '<leader>rr', 'yy<C-w>wpi<CR><C-\\><C-n><C-w>w', { desc = 'run line and stay in line' })
-- vim.keymap.set('n', '<leader>rh', 'viwy<C-w>whead(pi)<CR><C-\\><C-n><C-w>w', { desc = 'run head function in variable' })
-- vim.keymap.set('n', '<leader>rk', 'V}y<C-w>wpi<CR><C-\\><C-n><C-w>w}', { desc = 'run next block of code' })
-- vim.keymap.set('n', '<leader>ri', '{V}y<C-w>wpi<CR><C-\\><C-n><C-w>w}', { desc = 'run current block of code' })
-- vim.keymap.set('v', '<leader>rb', 'y<C-w>wpi<CR><C-\\><C-n><C-w>w', { desc = 'run selection' })
-- vim.keymap.set('n', '<leader>rf', ":lua vim.fn.expand('%p')<CR>o<ESC>d0i<C-r>%<ESC><C-v>0d<C-w>wi%run  <C-\\><C-n>pi<CR><C-\\><C-n>G<C-w>wdd")
-- <C-w>wpi<CR><C-\\><C-n><C-w>w", { desc = "run the whole file" })
--

-- R interactive
-- vim.keymap.set('n', '<leader>ro', ':split<CR>:terminal<CR>imodule load R<CR>R<CR><C-\\><C-n><C-w>w')
-- vim.keymap.set('n', '<leader>rv', ':vsplit<CR>:terminal<CR>imodule load R<CR>R<CR><C-\\><C-n><C-w>w')
-- vim.keymap.set('n', '<leader>rq', '<C-w>wiq(save="no")<CR>exit<CR>')
-- vim.keymap.set('i', '<C-]>', '<Esc>a %>% ')
-- vim.keymap.set('i', '<C-x>', '<Esc>a %in% ')
-- vim.keymap.set('i', '<C-_>', '<Esc>a <- ')
--

-- Python interactive
-- vim.keymap.set('n', '<leader>pv', ':vsplit<CR>:terminal<CR>iconda activate bioinfo<CR>ipython --no-autoindent<CR><C-\\><C-n><C-w>w')
-- vim.keymap.set('n', '<leader>ph', ':split<CR>:terminal<CR>iconda activate bioinfo<CR>ipython --no-autoindent<CR><C-\\><C-n><C-w>w')
-- vim.keymap.set('n', '<leader>pq', '<C-w>wiexit()<CR><C-\\><C-n><C-w>w<C-w>wiexit<CR>')

--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
-- vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
-- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
-- vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
-- vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

