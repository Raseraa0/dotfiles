vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt
local api = vim.api

opt.relativenumber = true
opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.cindent = true

opt.wrap = false

opt.ignorecase = true
opt.smartcase = true

opt.cursorline = true

opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

opt.backspace = "indent,eol,start"

opt.clipboard:append("unnamedplus")

opt.splitright = true
opt.splitbelow = true

opt.showmode = false

opt.scrolloff=8

-- opt.colorcolumn = '80'

-- permet de ne pas insérer de nouveau commentaire si je fais entrer ou si j'appuis sur o'
api.nvim_create_autocmd("FileType", {
  pattern = "*",
  command = "set formatoptions-=cro"
})
