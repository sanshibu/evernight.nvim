local M = {}

function M.setup(highlight, palette)
	highlight("FernBranchText", { fg = palette.blue })
	highlight("FernMarkedLine", { fg = palette.yellow })
	highlight("FernMarkedText", { fg = palette.yellow, bold = true })
	highlight("FernRootText", { fg = palette.purple, bold = true })
end

return M
