local M = {}

function M.setup(highlight, palette)
	highlight("NeoTreeNormal", { fg = palette.fg, bg = palette.darker_gray })
	highlight("NeoTreeNormalNC", { fg = palette.fg, bg = palette.darker_gray })
	highlight("NeoTreeVertSplit", { fg = palette.gray, bg = palette.bg })
	highlight("NeoTreeWinSeparator", { fg = palette.gray, bg = palette.bg })
	highlight("NeoTreeEndOfBuffer", { fg = palette.gray, bg = palette.darker_gray })
	highlight("NeoTreeRootName", { fg = palette.purple, bold = true })
	highlight("NeoTreeGitAdded", { fg = palette.green })
	highlight("NeoTreeGitDeleted", { fg = palette.red })
	highlight("NeoTreeGitModified", { fg = palette.yellow })
	highlight("NeoTreeGitConflict", { fg = palette.orange, italic = true })
	highlight("NeoTreeGitUntracked", { fg = palette.red, italic = true })
	highlight("NeoTreeIndentMarker", { fg = palette.gray })
	highlight("NeoTreeSymbolicLinkTarget", { fg = palette.cyan })
end

return M
