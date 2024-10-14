if vim.g.colors_name then
  vim.cmd("hi clear")
end

vim.g.colors_name = "evernight"
vim.o.termguicolors = true

require("evernight").load()
