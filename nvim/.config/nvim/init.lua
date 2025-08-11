vim.cmd("language en_US")
-- Load options
require("options")


-- Enable all lsp configs
require("lsp.init")
-- Load Lazy Package Manager
require("config.lazy")

require("colorschema")

require("keybinds")
