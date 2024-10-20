local M = {}

function M.setup(highlight, palette)
	highlight("HopNextKey", { fg = palette.orange, bold = true })
	highlight("HopNextKey1", { fg = palette.blue, bold = true })
	highlight("HopNextKey2", { fg = palette.purple })
	highlight("HopUnmatched", { fg = palette.gray })
end

return M
