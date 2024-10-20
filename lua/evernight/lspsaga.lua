local M = {}

function M.setup(highlight, palette)
	highlight("LspSagaCodeActionTitle", { fg = palette.blue })
	highlight("LspSagaCodeActionBorder", { fg = palette.gray })
	highlight("LspSagaCodeActionContent", { fg = palette.fg })
	highlight("LspSagaLspFinderBorder", { fg = palette.gray })
	highlight("LspSagaAutoPreview", { fg = palette.blue })
	highlight("LspSagaDefPreviewBorder", { fg = palette.gray })
	highlight("LspSagaRenameBorder", { fg = palette.gray })
	highlight("LspSagaRenamePromptPrefix", { fg = palette.green })
	highlight("LspSagaHoverBorder", { fg = palette.gray })
	highlight("LspSagaSignatureHelpBorder", { fg = palette.gray })
	highlight("LspSagaDiagnosticBorder", { fg = palette.gray })
	highlight("LspSagaDiagnosticHeader", { fg = palette.blue })
	highlight("LspSagaDiagnosticTruncateLine", { fg = palette.gray })
end

return M
