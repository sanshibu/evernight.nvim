local M = {}

function M.setup(highlight, palette)
	highlight("LightspeedLabel", { fg = palette.orange, bold = true, underline = true })
	highlight("LightspeedLabelDistant", { fg = palette.blue, bold = true, underline = true })
	highlight("LightspeedShortcut", { fg = palette.bg, bg = palette.orange, bold = true })
	highlight("LightspeedMaskedChar", { fg = palette.purple })
	highlight("LightspeedUnlabeledMatch", { fg = palette.fg, bold = true })
	highlight("LightspeedOneCharMatch", { fg = palette.bg, bg = palette.orange, bold = true })
	highlight("LightspeedUniqueChar", { fg = palette.fg, bold = true })
end

return M
