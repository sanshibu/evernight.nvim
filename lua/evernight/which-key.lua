local M = {}

function M.setup(highlight, palette)
	highlight("WhichKey", { fg = palette.purple })
	highlight("WhichKeyGroup", { fg = palette.cyan })
	highlight("WhichKeyDesc", { fg = palette.blue })
	highlight("WhichKeySeperator", { fg = palette.green })
	highlight("WhichKeySeparator", { fg = palette.green })
	highlight("WhichKeyFloat", { bg = palette.dark_gray })
	highlight("WhichKeyValue", { fg = palette.gray })
end

return M
