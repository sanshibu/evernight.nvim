local M = {}

function M.setup(highlight, palette)
	highlight("DapBreakpoint", { fg = palette.red })
	highlight("DapStopped", { fg = palette.green })
	highlight("DapLogPoint", { fg = palette.blue })
	highlight("DapBreakpointLine", { bg = palette.dark_red })
	highlight("DapStoppedLine", { bg = palette.dark_green })
	highlight("DapLogPointLine", { bg = palette.dark_blue })
end

return M
