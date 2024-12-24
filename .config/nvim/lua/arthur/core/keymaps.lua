vim.g.mapleader = " "

local keymap = vim.keymap

-- Ce raccourci est le raccourci du démon mais en vrai pourquoi pas ?
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlight" })

-- Un jour mettre des keymap pour les splitwindow ou les tab.
-- genre toujours avec <leader> qui est espace, pui s (ou t) puis une lettre.
-- genre open new tab c'est <leader>tn ???????

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set("n", "é", "10j", { desc = "Go down for 10 lines" })
keymap.set("v", "é", "10j", { desc = "Go down for 10 lines" })
keymap.set("n", "à", "10k", { desc = "Go up for 10 lines" })
keymap.set("v", "à", "10k", { desc = "Go up for 10 lines" })

keymap.set("n", "dé", "d10j", { desc = "Delete 10 next lines" })
keymap.set("n", "dà", "d10k", { desc = "Delete 10 past lines" })

keymap.set("n", "<leader>ld", function()
	vim.diagnostic.config({ virtual_text = not vim.diagnostic.config().virtual_text })
end, { desc = "Toggle diagnostics" })

keymap.set("n", "<leader>ls", function()
	vim.diagnostic.config({ signs = not vim.diagnostic.config().signs })
end, { desc = "Toggle diagnostic signs" })

keymap.set("n", "<leader>lu", function()
	vim.diagnostic.config({ underline = not vim.diagnostic.config().underline })
end, { desc = "Toggle diagnostic underline" })

keymap.set("n", "<leader>li", function()
	vim.diagnostic.config({ update_in_insert = not vim.diagnostic.config().update_in_insert })
end, { desc = "Toggle update in insert" })

keymap.set("n", "<leader>lt", function()
	vim.diagnostic.config({ severity_sort = not vim.diagnostic.config().severity_sort })
end, { desc = "Toggle severity sort" })

vim.keymap.set("n", "<leader>la", function()
	local config = vim.diagnostic.config()
	local all_disabled = not (
		config.virtual_text
		or config.signs
		or config.underline
		or config.update_in_insert
		or config.severity_sort
	)

	local new_state = all_disabled
	vim.diagnostic.config({
		virtual_text = new_state,
		signs = new_state,
		underline = new_state,
		update_in_insert = new_state,
		severity_sort = new_state,
	})
end, { desc = "Toggle all diagnostics" })

keymap.set("n", "<leader>o", "o<ESC>", { desc = "Insert new line after without enter in insert mode" })
keymap.set("n", "<leader>p", "O<ESC>", { desc = "Insert new line before without enter in insert mode" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

keymap.set("n", "<leader>é", "}", { desc = "Go to end of paragraphe" })
keymap.set("n", "<leader>à", "{", { desc = "Go to start of paragraphe" })

