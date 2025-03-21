return {
	"CRAG666/code_runner.nvim",
	config = function()
		require("code_runner").setup({
      mode = "term",
      focus = false,
			filetype = {
				java = {
					"cd $dir &&",
					"javac $fileName &&",
					"java $fileNameWithoutExt",
				},
				python = "python3 -u",
				typescript = "deno run",
				rust = {
					"cd $dir &&",
					"rustc $fileName &&",
					"$dir/$fileNameWithoutExt",
				},
				c = function(...)
					local c_base = {
						"cd $dir &&",
						"gcc $fileName -o",
						"/tmp/$fileNameWithoutExt",
					}
					local c_exec = {
      term = {
        position = "left",
        size = 10
      },
						"&& /tmp/$fileNameWithoutExt &&",
						"rm /tmp/$fileNameWithoutExt",
					}
					vim.ui.input({ prompt = "Add more args:" }, function(input)
						c_base[4] = input
						vim.print(vim.tbl_extend("force", c_base, c_exec))
						require("code_runner.commands").run_from_fn(vim.list_extend(c_base, c_exec))
					end)
				end,
			},
		})

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>rr", ":RunCode<CR>", { desc = "Code runner run" })
    keymap.set("n", "<leader>rc", ":RunClose<CR>", { desc = "Code runner close" })
	end,
}
