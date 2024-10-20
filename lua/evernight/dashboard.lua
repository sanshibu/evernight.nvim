local M = {}

function M.setup(highlight, palette)
	highlight("DashboardHeader", { fg = palette.blue })
	highlight("DashboardCenter", { fg = palette.purple })
	highlight("DashboardShortcut", { fg = palette.cyan })
	highlight("DashboardFooter", { fg = palette.gray, italic = true })
end

return M
