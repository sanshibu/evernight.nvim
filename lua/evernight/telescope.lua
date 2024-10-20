local M = {}

function M.setup(highlight, palette)
	highlight("TelescopeBorder", { fg = palette.gray })
	highlight("TelescopePromptBorder", { fg = palette.blue })
	highlight("TelescopeResultsBorder", { fg = palette.gray })
	highlight("TelescopePreviewBorder", { fg = palette.gray })
	highlight("TelescopeSelectionCaret", { fg = palette.blue })
	highlight("TelescopeSelection", { fg = palette.blue, bg = palette.dark_gray })
	highlight("TelescopeMatching", { fg = palette.yellow, bold = true })
	highlight("TelescopePromptPrefix", { fg = palette.purple })
	highlight("TelescopeNormal", { fg = palette.fg, bg = palette.bg })
	highlight("TelescopePromptNormal", { fg = palette.fg, bg = palette.dark_gray })
	highlight("TelescopeResultsNormal", { fg = palette.fg, bg = palette.bg })
	highlight("TelescopePreviewNormal", { fg = palette.fg, bg = palette.bg })
	highlight("TelescopePromptTitle", { fg = palette.bg, bg = palette.blue })
	highlight("TelescopeResultsTitle", { fg = palette.bg, bg = palette.green })
	highlight("TelescopePreviewTitle", { fg = palette.bg, bg = palette.red })
end

return M
