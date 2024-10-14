local M = {}

function M.setup(highlight, palette)
	highlight("NeotestAdapterName", { fg = palette.purple, bold = true })
	highlight("NeotestDir", { fg = palette.cyan })
	highlight("NeotestExpandMarker", { fg = palette.gray })
	highlight("NeotestFailed", { fg = palette.red })
	highlight("NeotestFile", { fg = palette.cyan })
	highlight("NeotestFocused", { fg = palette.yellow })
	highlight("NeotestIndent", { fg = palette.gray })
	highlight("NeotestMarked", { fg = palette.orange, bold = true })
	highlight("NeotestNamespace", { fg = palette.blue })
	highlight("NeotestPassed", { fg = palette.green })
	highlight("NeotestRunning", { fg = palette.yellow })
	highlight("NeotestSkipped", { fg = palette.gray })
	highlight("NeotestTarget", { fg = palette.purple })
	highlight("NeotestTest", { fg = palette.fg })
	highlight("NeotestWinSelect", { fg = palette.blue, bold = true })
end

return M
