return {
  {"nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate"
    config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"c", "lua", "javascript", "python", "css", "javascript", "markdown", "html", "bash", "toml", "yaml"},
      highlight = { enable = true },
      indent = { enable = true },  
    })
    end 
  }
}
