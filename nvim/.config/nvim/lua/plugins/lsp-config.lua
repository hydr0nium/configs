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
				ensure_installed = {"jedi_language_server", "lua_ls", "tsserver", "ltex", "clangd", "bashls", "asm_lsp", "cssls", "dockerls", "html", "jdtls"}
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.jedi_language_server.setup({capabilities = capabilities})
			lspconfig.lua_ls.setup({capabilities = capabilities})
			lspconfig.html.setup({capabilities = capabilities})
			lspconfig.bashls.setup({capabilities = capabilities})
			lspconfig.dockerls.setup({capabilities = capabilities})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, {})
		end
	}

}
