local M = {}

M.palette = {
	bg = "#2b3339",
	fg = "#d3c6aa",
	red = "#e67e80",
	green = "#a7c080",
	yellow = "#dbbc7f",
	blue = "#7fbbb3",
	purple = "#d699b6",
	cyan = "#83c092",
	orange = "#e69875",
	gray = "#7a8478",
	light_gray = "#859289",
	dark_gray = "#3a454a",
	darker_gray = "#323c41",
	black = "#272e33",
}

local function highlight(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

function M.load()
	-- Base highlights
	highlight("Normal", { fg = M.palette.fg, bg = M.palette.bg })
	highlight("NormalFloat", { fg = M.palette.fg, bg = M.palette.dark_gray })
	highlight("Cursor", { fg = M.palette.bg, bg = M.palette.fg })
	highlight("CursorLine", { bg = M.palette.dark_gray })
	highlight("CursorColumn", { bg = M.palette.dark_gray })
	highlight("ColorColumn", { bg = M.palette.dark_gray })
	highlight("LineNr", { fg = M.palette.gray })
	highlight("CursorLineNr", { fg = M.palette.yellow, bold = true })
	highlight("VertSplit", { fg = M.palette.dark_gray, bg = M.palette.bg })
	highlight("Folded", { fg = M.palette.gray, bg = M.palette.dark_gray })
	highlight("FoldColumn", { fg = M.palette.gray, bg = M.palette.bg })
	highlight("SignColumn", { fg = M.palette.fg, bg = M.palette.bg })
	highlight("MatchParen", { fg = M.palette.cyan, bold = true, underline = true })
	highlight("StatusLine", { fg = M.palette.fg, bg = M.palette.dark_gray })
	highlight("StatusLineNC", { fg = M.palette.gray, bg = M.palette.darker_gray })
	highlight("Pmenu", { fg = M.palette.fg, bg = M.palette.dark_gray })
	highlight("PmenuSel", { fg = M.palette.bg, bg = M.palette.blue })
	highlight("PmenuSbar", { bg = M.palette.darker_gray })
	highlight("PmenuThumb", { bg = M.palette.gray })
	highlight("TabLine", { fg = M.palette.gray, bg = M.palette.dark_gray })
	highlight("TabLineFill", { fg = M.palette.gray, bg = M.palette.darker_gray })
	highlight("TabLineSel", { fg = M.palette.fg, bg = M.palette.bg })
	highlight("Title", { fg = M.palette.green, bold = true })
	highlight("Visual", { bg = M.palette.gray })
	highlight("VisualNOS", { bg = M.palette.gray })
	highlight("WarningMsg", { fg = M.palette.yellow, bold = true })
	highlight("WildMenu", { fg = M.palette.fg, bg = M.palette.blue })
	highlight("Directory", { fg = M.palette.blue })
	highlight("Conceal", { fg = M.palette.gray })
	highlight("NonText", { fg = M.palette.gray })
	highlight("SpecialKey", { fg = M.palette.gray })
	highlight("Whitespace", { fg = M.palette.gray })

	-- Syntax highlights
	highlight("Comment", { fg = M.palette.gray, italic = true })
	highlight("Constant", { fg = M.palette.cyan })
	highlight("String", { fg = M.palette.green })
	highlight("Character", { fg = M.palette.green })
	highlight("Number", { fg = M.palette.orange })
	highlight("Boolean", { fg = M.palette.orange })
	highlight("Float", { fg = M.palette.orange })
	highlight("Identifier", { fg = M.palette.red })
	highlight("Function", { fg = M.palette.blue })
	highlight("Statement", { fg = M.palette.purple })
	highlight("Conditional", { fg = M.palette.purple })
	highlight("Repeat", { fg = M.palette.purple })
	highlight("Label", { fg = M.palette.purple })
	highlight("Operator", { fg = M.palette.cyan })
	highlight("Keyword", { fg = M.palette.purple })
	highlight("Exception", { fg = M.palette.purple })
	highlight("PreProc", { fg = M.palette.yellow })
	highlight("Include", { fg = M.palette.purple })
	highlight("Define", { fg = M.palette.purple })
	highlight("Macro", { fg = M.palette.purple })
	highlight("PreCondit", { fg = M.palette.yellow })
	highlight("Type", { fg = M.palette.yellow })
	highlight("StorageClass", { fg = M.palette.yellow })
	highlight("Structure", { fg = M.palette.yellow })
	highlight("Typedef", { fg = M.palette.yellow })
	highlight("Special", { fg = M.palette.blue })
	highlight("SpecialChar", { fg = M.palette.orange })
	highlight("Tag", { fg = M.palette.blue })
	highlight("Delimiter", { fg = M.palette.fg })
	highlight("SpecialComment", { fg = M.palette.gray, italic = true })
	highlight("Debug", { fg = M.palette.orange })
	highlight("Underlined", { fg = M.palette.blue, underline = true })
	highlight("Ignore", { fg = M.palette.gray })
	highlight("Error", { fg = M.palette.red, bold = true })
	highlight("Todo", { fg = M.palette.purple, bold = true })

	-- Load plugin-specific highlights
	require("evernight.treesitter").setup(highlight, M.palette)
	require("evernight.lsp").setup(highlight, M.palette)
	require("evernight.telescope").setup(highlight, M.palette)
	require("evernight.nvim-tree").setup(highlight, M.palette)
	require("evernight.which-key").setup(highlight, M.palette)
	require("evernight.dashboard").setup(highlight, M.palette)
	require("evernight.lualine").setup(highlight, M.palette)
	require("evernight.git").setup(highlight, M.palette)
	require("evernight.diff").setup(highlight, M.palette)
	require("evernight.hop").setup(highlight, M.palette)
	require("evernight.mini").setup(highlight, M.palette)
	require("evernight.neo-tree").setup(highlight, M.palette)
	require("evernight.neotest").setup(highlight, M.palette)
	require("evernight.barbecue").setup(highlight, M.palette)
	require("evernight.indent-blankline").setup(highlight, M.palette)
	require("evernight.illuminate").setup(highlight, M.palette)
	require("evernight.trouble").setup(highlight, M.palette)
	require("evernight.neogit").setup(highlight, M.palette)
	require("evernight.cmp").setup(highlight, M.palette)
	require("evernight.bufferline").setup(highlight, M.palette)
	require("evernight.notify").setup(highlight, M.palette)
	require("evernight.lightspeed").setup(highlight, M.palette)
	require("evernight.sneak").setup(highlight, M.palette)
	require("evernight.fern").setup(highlight, M.palette)
	require("evernight.barbar").setup(highlight, M.palette)
	require("evernight.lspsaga").setup(highlight, M.palette)
	require("evernight.dap").setup(highlight, M.palette)
	require("evernight.navic").setup(highlight, M.palette)
	require("evernight.ts-rainbow").setup(highlight, M.palette)
	require("evernight.noice").setup(highlight, M.palette)
end

function M.setup()
	-- Any setup logic can go here
end

return M
