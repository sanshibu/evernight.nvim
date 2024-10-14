local M = {}

function M.setup(highlight, palette)
	highlight("NvimTreeNormal", { fg = palette.fg, bg = palette.darker_gray })
	highlight("NvimTreeFolderName", { fg = palette.blue })
	highlight("NvimTreeRootFolder", { fg = palette.purple, bold = true })
	highlight("NvimTreeFolderIcon", { fg = palette.yellow })
	highlight("NvimTreeEmptyFolderName", { fg = palette.gray })
	highlight("NvimTreeOpenedFolderName", { fg = palette.yellow })
	highlight("NvimTreeExecFile", { fg = palette.green, bold = true })
	highlight("NvimTreeOpenedFile", { fg = palette.green })
	highlight("NvimTreeSpecialFile", { fg = palette.purple, underline = true })
	highlight("NvimTreeImageFile", { fg = palette.purple })
	highlight("NvimTreeMarkdownFile", { fg = palette.purple })
	highlight("NvimTreeIndentMarker", { fg = palette.gray })
end

return M
