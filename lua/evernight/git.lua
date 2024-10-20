local M = {}

function M.setup(highlight, palette)
	highlight("GitGutterAdd", { fg = palette.green })
	highlight("GitGutterChange", { fg = palette.yellow })
	highlight("GitGutterDelete", { fg = palette.red })
	highlight("GitGutterChangeDelete", { fg = palette.orange })

	highlight("GitSignsAdd", { fg = palette.green })
	highlight("GitSignsChange", { fg = palette.yellow })
	highlight("GitSignsDelete", { fg = palette.red })

	highlight("fugitiveHeader", { fg = palette.blue, bold = true })
	highlight("fugitiveHunk", { fg = palette.yellow })
	highlight("fugitiveSymbolicRef", { fg = palette.purple })
	highlight("fugitiveCount", { fg = palette.orange })
	highlight("fugitiveStagedHeading", { fg = palette.green, bold = true })
	highlight("fugitiveUnstagedHeading", { fg = palette.red, bold = true })
end

return M
