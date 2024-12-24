return {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)

	config = function()
		local ls = require("luasnip")
		local keymap = vim.keymap

		keymap.set({ "i", "s" }, "<A-j>", function()
			ls.jump(1)
		end, { silent = true })
		keymap.set({ "i", "s" }, "<A-k>", function()
			ls.jump(-1)
		end, { silent = true })

		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node
		local f = ls.function_node

		-- Fonction pour convertir le chemin du fichier en nom de garde
		local function get_header_guard(path)
			-- Extraire le nom du fichier
			local filename = path:match("[^/]+$"):upper()

			-- Remplacer les points et traits d'union par des underscores
			filename = filename:gsub("%.", "_"):gsub("-", "_")

			return filename
		end

		ls.add_snippets("cpp", {
			s("aze custom", {
				t("std::clog << "),
				i(1),
				t(" << std::endl;"),
			}),
			s("ifndef custom", {
				t("#ifndef "),
				f(function(_, snip)
					return get_header_guard(snip.env.TM_FILENAME)
				end),
				t({ "", "#define " }),
				f(function(_, snip)
					return get_header_guard(snip.env.TM_FILENAME)
				end),
				t({ "", "", "" }),
        i(1),
				t({ "", "", "" }),
				t({ "", "#endif // !" }),
				f(function(_, snip)
					return get_header_guard(snip.env.TM_FILENAME)
				end),
			}),
		})
	end,
}
