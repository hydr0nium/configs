vim.g.mapleader = "," -- Change leader key to ,

-- Telescope keybinds
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })


-- Toggle Term keybinds 
vim.keymap.set('n', '<leader>t', ':ToggleTerm direction=float<CR>', { desc = "Create a new floating terminal"})


-- QoL keybinds
vim.keymap.set('n', '<A-j>', ':m .+1<CR>', { desc = "Move line one down"})
vim.keymap.set('n', '<A-k>', ':m .-2<CR>', { desc = "Move line one up"})
vim.keymap.set('v', '<A-j>', ":m '>+1<CR>", { desc = "Move lines down"})
vim.keymap.set('v', '<A-k>', ":m '<-2<CR>", { desc = "Move lines up"})

