local M = {}

function M.setup(highlight, palette)
	highlight("TroubleCount", { fg = palette.purple, bg = palette.bg })
	highlight("TroubleNormal", { fg = palette.fg, bg = palette.bg })
	highlight("TroubleText", { fg = palette.fg })
	highlight("TroublePreview", { fg = palette.cyan })
	highlight("TroubleFoldIcon", { fg = palette.yellow })
	highlight("TroubleIndent", { fg = palette.gray })
	highlight("TroubleLocation", { fg = palette.gray })
	highlight("TroubleSource", { fg = palette.gray })
	highlight("TroubleCode", { fg = palette.green })
	highlight("TroubleFile", { fg = palette.cyan })
end

return M
