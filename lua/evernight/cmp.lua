local M = {}

function M.setup(highlight, palette)
	highlight("CmpItemAbbr", { fg = palette.fg })
	highlight("CmpItemAbbrDeprecated", { fg = palette.gray, strikethrough = true })
	highlight("CmpItemAbbrMatch", { fg = palette.blue, bold = true })
	highlight("CmpItemAbbrMatchFuzzy", { fg = palette.blue, bold = true })
	highlight("CmpItemKind", { fg = palette.purple })
	highlight("CmpItemMenu", { fg = palette.gray })
	highlight("CmpItemKindText", { fg = palette.orange })
	highlight("CmpItemKindMethod", { fg = palette.blue })
	highlight("CmpItemKindFunction", { fg = palette.blue })
	highlight("CmpItemKindConstructor", { fg = palette.yellow })
	highlight("CmpItemKindField", { fg = palette.blue })
	highlight("CmpItemKindVariable", { fg = palette.red })
	highlight("CmpItemKindClass", { fg = palette.yellow })
	highlight("CmpItemKindInterface", { fg = palette.yellow })
	highlight("CmpItemKindModule", { fg = palette.blue })
	highlight("CmpItemKindProperty", { fg = palette.red })
	highlight("CmpItemKindUnit", { fg = palette.green })
	highlight("CmpItemKindValue", { fg = palette.orange })
	highlight("CmpItemKindEnum", { fg = palette.yellow })
	highlight("CmpItemKindKeyword", { fg = palette.purple })
	highlight("CmpItemKindSnippet", { fg = palette.green })
	highlight("CmpItemKindColor", { fg = palette.cyan })
	highlight("CmpItemKindFile", { fg = palette.blue })
	highlight("CmpItemKindReference", { fg = palette.purple })
	highlight("CmpItemKindFolder", { fg = palette.orange })
	highlight("CmpItemKindEnumMember", { fg = palette.cyan })
	highlight("CmpItemKindConstant", { fg = palette.orange })
	highlight("CmpItemKindStruct", { fg = palette.yellow })
	highlight("CmpItemKindEvent", { fg = palette.purple })
	highlight("CmpItemKindOperator", { fg = palette.cyan })
	highlight("CmpItemKindTypeParameter", { fg = palette.green })
end

return M
