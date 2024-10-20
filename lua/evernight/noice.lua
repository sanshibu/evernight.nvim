local M = {}

function M.setup(highlight, palette)
	highlight("NoiceCmdline", { fg = palette.fg, bg = palette.dark_gray })
	highlight("NoiceCmdlineIcon", { fg = palette.blue })
	highlight("NoiceCmdlineIconSearch", { fg = palette.yellow })
	highlight("NoiceCmdlinePopup", { fg = palette.fg, bg = palette.darker_gray })
	highlight("NoiceCmdlinePopupBorder", { fg = palette.gray })
	highlight("NoiceCmdlinePopupBorderSearch", { fg = palette.yellow })
	highlight("NoiceConfirm", { fg = palette.fg, bg = palette.dark_gray })
	highlight("NoiceConfirmBorder", { fg = palette.gray })
	highlight("NoiceCursor", { fg = palette.bg, bg = palette.fg })
	highlight("NoiceLspProgressClient", { fg = palette.purple })
	highlight("NoiceLspProgressSpinner", { fg = palette.blue })
	highlight("NoiceLspProgressTitle", { fg = palette.cyan })
	highlight("NoicePopup", { fg = palette.fg, bg = palette.darker_gray })
	highlight("NoicePopupBorder", { fg = palette.gray })
	highlight("NoiceScrollbar", { fg = palette.gray, bg = palette.darker_gray })
	highlight("NoiceScrollbarThumb", { fg = palette.fg, bg = palette.dark_gray })
	highlight("NoiceSplit", { fg = palette.fg, bg = palette.darker_gray })
	highlight("NoiceSplitBorder", { fg = palette.gray })
	highlight("NoiceVirtualText", { fg = palette.gray, italic = true })
end

return M
