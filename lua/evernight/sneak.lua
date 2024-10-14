local M = {}

function M.setup(highlight, palette)
	highlight("Sneak", { fg = palette.bg, bg = palette.orange })
	highlight("SneakScope", { bg = palette.dark_gray })
	highlight("SneakLabel", { fg = palette.bg, bg = palette.orange, bold = true })
end

return M
