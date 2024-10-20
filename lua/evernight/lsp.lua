local M = {}

function M.setup(highlight, palette)
	highlight("DiagnosticError", { fg = palette.red })
	highlight("DiagnosticWarn", { fg = palette.yellow })
	highlight("DiagnosticInfo", { fg = palette.blue })
	highlight("DiagnosticHint", { fg = palette.cyan })
	highlight("DiagnosticUnderlineError", { undercurl = true, sp = palette.red })
	highlight("DiagnosticUnderlineWarn", { undercurl = true, sp = palette.yellow })
	highlight("DiagnosticUnderlineInfo", { undercurl = true, sp = palette.blue })
	highlight("DiagnosticUnderlineHint", { undercurl = true, sp = palette.cyan })
	highlight("LspReferenceText", { bg = palette.dark_gray })
	highlight("LspReferenceRead", { bg = palette.dark_gray })
	highlight("LspReferenceWrite", { bg = palette.dark_gray })
	highlight("LspSignatureActiveParameter", { fg = palette.yellow, bold = true })
end

return M
