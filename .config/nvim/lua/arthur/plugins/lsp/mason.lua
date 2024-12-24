return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")

		-- import mason-lspconfig
		local mason_lspconfig = require("mason-lspconfig")

		local mason_tool_installer = require("mason-tool-installer")

		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		mason_lspconfig.setup({
			-- list of servers for mason to install
			-- ICI c'est language en eux même
			ensure_installed = {
				"pyright",
				"lua_ls",
				"bashls",
				"jdtls",
				"clangd",
			},
      automatic_installation = true,
		})

		-- ICI c'est les linter, les formatter, les outils tier quoi
		mason_tool_installer.setup({
			ensure_installed = {
				"prettier", -- prettier formatter
				"stylua", -- lua fmrmatter
				"isort", -- python formatter
				"black", -- python formatter
				"pylint",
				"shellcheck",
				"google-java-format",
				"clang-format",
				"cmake-language-server",
				"cmakelang",
				"cmakelint",
			},
		})
	end,
}
