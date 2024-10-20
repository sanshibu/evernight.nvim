local M = {}

function M.setup(highlight, palette)
	highlight("BarbarIconBranch", { fg = palette.purple })
	highlight("BarbarIconFile", { fg = palette.blue })
	highlight("BarbarIconModule", { fg = palette.yellow })
	highlight("BarbarIconNamespace", { fg = palette.cyan })
	highlight("BarbarIconPackage", { fg = palette.green })
	highlight("BarbarIconSeparator", { fg = palette.gray })
end

return M
