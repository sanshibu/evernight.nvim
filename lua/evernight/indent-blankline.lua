local M = {}

function M.setup(highlight, palette)
	highlight("IndentBlanklineChar", { fg = palette.gray, nocombine = true })
	highlight("IndentBlanklineContextChar", { fg = palette.purple, nocombine = true })
	highlight("IndentBlanklineSpaceChar", { fg = palette.gray, nocombine = true })
	highlight("IndentBlanklineSpaceCharBlankline", { fg = palette.gray, nocombine = true })
end

return M
