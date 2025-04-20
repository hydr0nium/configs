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
            local capabilities = require('blink.cmp').get_lsp_capabilities()
            local lspconfig = require('lspconfig')
        
            lspconfig['pylsp'].setup({ capabilities = capabilities })
            lspconfig['jedi_language_server'].setup({ capabilities = capabilities })
        end
    }
}