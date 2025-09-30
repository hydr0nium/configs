return {
    {
      "williamboman/mason.nvim",
      config = function()
        require("mason").setup()
      end
    },
    {
      "williamboman/mason-lspconfig.nvim",
      config = function()
        require("mason-lspconfig").setup({
          ensure_installed = {
            "html",
            "dockerls",
            "pylsp",
            "lua_ls",
            "docker_compose_language_service",
            "jedi_language_server"
          }
        })
      end
    },
    {
        "neovim/nvim-lspconfig",
    -- example calling setup directly for each LSP
        config = function()
        vim.lsp.config("*", {})
      --      local capabilities = require('blink.cmp').get_lsp_capabilities()
      --    #vim.lsp.config
        -- lspconfig['pylsp'].setup({ capabilities = capabilities })
      --    lspconfig['jedi_language_server'].setup({ capabilities = capabilities })
        --      lspconfig['lua_ls'].setup({ capabilities = capabilities})
        end
    }
}
