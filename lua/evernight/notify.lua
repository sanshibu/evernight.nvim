local M = {}

function M.setup(highlight, palette)
	highlight("NotifyERRORBorder", { fg = palette.red })
	highlight("NotifyWARNBorder", { fg = palette.yellow })
	highlight("NotifyINFOBorder", { fg = palette.green })
	highlight("NotifyDEBUGBorder", { fg = palette.gray })
	highlight("NotifyTRACEBorder", { fg = palette.purple })
	highlight("NotifyERRORIcon", { fg = palette.red })
	highlight("NotifyWARNIcon", { fg = palette.yellow })
	highlight("NotifyINFOIcon", { fg = palette.green })
	highlight("NotifyDEBUGIcon", { fg = palette.gray })
	highlight("NotifyTRACEIcon", { fg = palette.purple })
	highlight("NotifyERRORTitle", { fg = palette.red })
	highlight("NotifyWARNTitle", { fg = palette.yellow })
	highlight("NotifyINFOTitle", { fg = palette.green })
	highlight("NotifyDEBUGTitle", { fg = palette.gray })
	highlight("NotifyTRACETitle", { fg = palette.purple })
	highlight("NotifyERRORBody", { fg = palette.fg })
	highlight("NotifyWARNBody", { fg = palette.fg })
	highlight("NotifyINFOBody", { fg = palette.fg })
	highlight("NotifyDEBUGBody", { fg = palette.fg })
	highlight("NotifyTRACEBody", { fg = palette.fg })
end

return M
