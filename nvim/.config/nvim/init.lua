vim.api.nvim_exec('language en_US', true)

-- Load options
require("options")

-- Load Lazy Package Manager
require("config.lazy")