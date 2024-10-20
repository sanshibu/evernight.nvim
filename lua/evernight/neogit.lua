local M = {}

function M.setup(highlight, palette)
	highlight("NeogitBranch", { fg = palette.purple })
	highlight("NeogitRemote", { fg = palette.cyan })
	highlight("NeogitHunkHeader", { fg = palette.fg, bg = palette.dark_gray })
	highlight("NeogitHunkHeaderHighlight", { fg = palette.blue, bg = palette.dark_gray, bold = true })
	highlight("NeogitDiffContextHighlight", { bg = palette.dark_gray })
	highlight("NeogitDiffDeleteHighlight", { fg = palette.red, bg = palette.dark_gray })
	highlight("NeogitDiffAddHighlight", { fg = palette.green, bg = palette.dark_gray })
	highlight("NeogitCommitViewHeader", { fg = palette.blue, bold = true })
end

return M
