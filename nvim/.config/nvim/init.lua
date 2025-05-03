vim.api.nvim_exec('language en_US', true)

-- Load options
require("options")


-- Enable all lsp configs
require("lsp.init")
-- Load Lazy Package Manager
require("config.lazy")

require("colorschema")

require("keybinds")
