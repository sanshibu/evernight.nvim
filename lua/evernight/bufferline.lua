local M = {}

function M.setup(highlight, palette)
	highlight("BufferLineIndicatorSelected", { fg = palette.blue })
	highlight("BufferLineFill", { bg = palette.black })
	highlight("BufferLineBackground", { fg = palette.gray, bg = palette.darker_gray })
	highlight("BufferLineBufferVisible", { fg = palette.fg, bg = palette.bg })
	highlight("BufferLineBufferSelected", { fg = palette.fg, bg = palette.bg, bold = true })
	highlight("BufferLineTab", { fg = palette.gray, bg = palette.darker_gray })
	highlight("BufferLineTabSelected", { fg = palette.bg, bg = palette.blue })
	highlight("BufferLineTabClose", { fg = palette.red, bg = palette.darker_gray })
	highlight("BufferLineCloseButton", { fg = palette.gray, bg = palette.darker_gray })
	highlight("BufferLineCloseButtonVisible", { fg = palette.fg, bg = palette.bg })
	highlight("BufferLineCloseButtonSelected", { fg = palette.red, bg = palette.bg })
	highlight("BufferLineModified", { fg = palette.yellow, bg = palette.darker_gray })
	highlight("BufferLineModifiedVisible", { fg = palette.yellow, bg = palette.bg })
	highlight("BufferLineModifiedSelected", { fg = palette.green, bg = palette.bg })
end

return M
