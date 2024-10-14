local M = {}

function M.setup(highlight, palette)
	highlight("BufferCurrent", { fg = palette.fg, bg = palette.bg })
	highlight("BufferCurrentIndex", { fg = palette.fg, bg = palette.bg })
	highlight("BufferCurrentMod", { fg = palette.yellow, bg = palette.bg })
	highlight("BufferCurrentSign", { fg = palette.blue, bg = palette.bg })
	highlight("BufferCurrentTarget", { fg = palette.red, bg = palette.bg, bold = true })
	highlight("BufferVisible", { fg = palette.fg, bg = palette.dark_gray })
	highlight("BufferVisibleIndex", { fg = palette.fg, bg = palette.dark_gray })
	highlight("BufferVisibleMod", { fg = palette.yellow, bg = palette.dark_gray })
	highlight("BufferVisibleSign", { fg = palette.gray, bg = palette.dark_gray })
	highlight("BufferVisibleTarget", { fg = palette.red, bg = palette.dark_gray, bold = true })
	highlight("BufferInactive", { fg = palette.gray, bg = palette.darker_gray })
	highlight("BufferInactiveIndex", { fg = palette.gray, bg = palette.darker_gray })
	highlight("BufferInactiveMod", { fg = palette.yellow, bg = palette.darker_gray })
	highlight("BufferInactiveSign", { fg = palette.gray, bg = palette.darker_gray })
	highlight("BufferInactiveTarget", { fg = palette.red, bg = palette.darker_gray, bold = true })
end

return M
