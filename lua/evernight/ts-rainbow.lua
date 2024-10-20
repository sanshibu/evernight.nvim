local M = {}

function M.setup(highlight, palette)
	highlight("rainbowcol1", { fg = palette.red })
	highlight("rainbowcol2", { fg = palette.green })
	highlight("rainbowcol3", { fg = palette.yellow })
	highlight("rainbowcol4", { fg = palette.blue })
	highlight("rainbowcol5", { fg = palette.purple })
	highlight("rainbowcol6", { fg = palette.cyan })
	highlight("rainbowcol7", { fg = palette.orange })
end

return M
