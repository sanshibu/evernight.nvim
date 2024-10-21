local M = {}

M.config = {
	style = "dark",
	transparent = false,
	italic_comments = true,
	italic_keywords = false,
	italic_functions = false,
	italic_variables = false,
	contrast = "medium",
	overrides = {},
}

local function hsl(h, s, l)
	return string.format("hsl(%d, %d%%, %d%%)", h, s, l)
end

M.palette = {
	dark = {
		bg = hsl(230, 15, 15),
		fg = hsl(230, 50, 80),
		red = hsl(355, 90, 70),
		green = hsl(120, 60, 60),
		yellow = hsl(40, 70, 65),
		blue = hsl(220, 90, 70),
		purple = hsl(270, 80, 75),
		cyan = hsl(190, 100, 75),
		orange = hsl(25, 100, 70),
		pink = hsl(320, 80, 85),
		teal = hsl(170, 70, 70),
		gray = hsl(230, 20, 45),
		light_gray = hsl(230, 25, 65),
		dark_gray = hsl(230, 20, 25),
		darker_gray = hsl(230, 20, 20),
		black = hsl(230, 20, 10),
		bright_red = hsl(355, 100, 75),
		bright_green = hsl(120, 80, 70),
		bright_yellow = hsl(40, 100, 70),
		bright_blue = hsl(220, 100, 75),
		bright_purple = hsl(270, 90, 80),
		bright_cyan = hsl(190, 90, 80),
		bright_white = hsl(230, 20, 85),
	},
	light = {
		bg = hsl(230, 20, 90),
		fg = hsl(230, 60, 40),
		red = hsl(355, 90, 55),
		green = hsl(120, 40, 35),
		yellow = hsl(40, 50, 40),
		blue = hsl(220, 80, 55),
		purple = hsl(270, 85, 60),
		cyan = hsl(190, 100, 30),
		orange = hsl(25, 100, 35),
		pink = hsl(320, 70, 70),
		teal = hsl(170, 50, 45),
		gray = hsl(230, 25, 60),
		light_gray = hsl(230, 25, 45),
		dark_gray = hsl(230, 15, 80),
		darker_gray = hsl(230, 15, 75),
		black = hsl(230, 15, 92),
		bright_red = hsl(355, 90, 55),
		bright_green = hsl(120, 40, 35),
		bright_yellow = hsl(40, 50, 40),
		bright_blue = hsl(220, 80, 55),
		bright_purple = hsl(270, 85, 60),
		bright_cyan = hsl(190, 100, 30),
		bright_white = hsl(230, 60, 40),
	},
}

local function highlight(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

local function load_syntax()
	-- Syntax highlights
	local syntax = {
		Normal = { fg = M.palette[M.config.style].fg, bg = M.palette[M.config.style].bg },
		Comment = { fg = M.palette[M.config.style].gray, italic = M.config.italic_comments },
		Constant = { fg = M.palette[M.config.style].cyan },
		String = { fg = M.palette[M.config.style].green },
		Character = { fg = M.palette[M.config.style].green },
		Number = { fg = M.palette[M.config.style].orange },
		Boolean = { fg = M.palette[M.config.style].orange },
		Float = { fg = M.palette[M.config.style].orange },
		Identifier = { fg = M.palette[M.config.style].red },
		Function = { fg = M.palette[M.config.style].blue, italic = M.config.italic_functions },
		Statement = { fg = M.palette[M.config.style].purple },
		Conditional = { fg = M.palette[M.config.style].purple },
		Repeat = { fg = M.palette[M.config.style].purple },
		Label = { fg = M.palette[M.config.style].purple },
		Operator = { fg = M.palette[M.config.style].cyan },
		Keyword = { fg = M.palette[M.config.style].purple, italic = M.config.italic_keywords },
		Exception = { fg = M.palette[M.config.style].purple },
		PreProc = { fg = M.palette[M.config.style].yellow },
		Include = { fg = M.palette[M.config.style].purple },
		Define = { fg = M.palette[M.config.style].purple },
		Macro = { fg = M.palette[M.config.style].purple },
		PreCondit = { fg = M.palette[M.config.style].yellow },
		Type = { fg = M.palette[M.config.style].yellow },
		StorageClass = { fg = M.palette[M.config.style].yellow },
		Structure = { fg = M.palette[M.config.style].yellow },
		Typedef = { fg = M.palette[M.config.style].yellow },
		Special = { fg = M.palette[M.config.style].blue },
		SpecialChar = { fg = M.palette[M.config.style].orange },
		Tag = { fg = M.palette[M.config.style].blue },
		Delimiter = { fg = M.palette[M.config.style].fg },
		SpecialComment = { fg = M.palette[M.config.style].gray, italic = true },
		Debug = { fg = M.palette[M.config.style].orange },
		Underlined = { fg = M.palette[M.config.style].blue, underline = true },
		Ignore = { fg = M.palette[M.config.style].gray },
		Error = { fg = M.palette[M.config.style].red, bold = true },
		Todo = { fg = M.palette[M.config.style].purple, bold = true },
	}

	return syntax
end

local function load_editor()
	-- Editor highlights
	local editor = {
		ColorColumn = { bg = M.palette[M.config.style].dark_gray },
		Conceal = { fg = M.palette[M.config.style].gray },
		Cursor = { fg = M.palette[M.config.style].bg, bg = M.palette[M.config.style].fg },
		CursorColumn = { bg = M.palette[M.config.style].dark_gray },
		CursorLine = { bg = M.palette[M.config.style].dark_gray },
		Directory = { fg = M.palette[M.config.style].blue },
		DiffAdd = { fg = M.palette[M.config.style].green, bg = M.palette[M.config.style].dark_gray },
		DiffChange = { fg = M.palette[M.config.style].yellow, bg = M.palette[M.config.style].dark_gray },
		DiffDelete = { fg = M.palette[M.config.style].red, bg = M.palette[M.config.style].dark_gray },
		DiffText = { fg = M.palette[M.config.style].blue, bg = M.palette[M.config.style].dark_gray },
		EndOfBuffer = { fg = M.palette[M.config.style].bg },
		TermCursor = { fg = M.palette[M.config.style].bg, bg = M.palette[M.config.style].fg },
		TermCursorNC = { fg = M.palette[M.config.style].bg, bg = M.palette[M.config.style].gray },
		ErrorMsg = { fg = M.palette[M.config.style].red },
		VertSplit = { fg = M.palette[M.config.style].dark_gray },
		Folded = { fg = M.palette[M.config.style].gray, bg = M.palette[M.config.style].dark_gray },
		FoldColumn = { fg = M.palette[M.config.style].gray, bg = M.palette[M.config.style].dark_gray },
		SignColumn = { fg = M.palette[M.config.style].fg, bg = M.palette[M.config.style].bg },
		IncSearch = { fg = M.palette[M.config.style].bg, bg = M.palette[M.config.style].orange },
		Substitute = { fg = M.palette[M.config.style].bg, bg = M.palette[M.config.style].yellow },
		LineNr = { fg = M.palette[M.config.style].gray },
		CursorLineNr = { fg = M.palette[M.config.style].yellow },
		MatchParen = { fg = M.palette[M.config.style].cyan, bold = true, underline = true },
		ModeMsg = { fg = M.palette[M.config.style].fg, bold = true },
		MsgArea = { fg = M.palette[M.config.style].fg },
		MoreMsg = { fg = M.palette[M.config.style].blue },
		NonText = { fg = M.palette[M.config.style].gray },
		Pmenu = { fg = M.palette[M.config.style].fg, bg = M.palette[M.config.style].dark_gray },
		PmenuSel = { fg = M.palette[M.config.style].bg, bg = M.palette[M.config.style].blue },
		PmenuSbar = { bg = M.palette[M.config.style].darker_gray },
		PmenuThumb = { bg = M.palette[M.config.style].gray },
		Question = { fg = M.palette[M.config.style].blue },
		QuickFixLine = { fg = M.palette[M.config.style].blue, bold = true },
		Search = { fg = M.palette[M.config.style].bg, bg = M.palette[M.config.style].yellow },
		SpecialKey = { fg = M.palette[M.config.style].gray },
		SpellBad = { fg = M.palette[M.config.style].red, underline = true },
		SpellCap = { fg = M.palette[M.config.style].yellow, underline = true },
		SpellLocal = { fg = M.palette[M.config.style].blue, underline = true },
		SpellRare = { fg = M.palette[M.config.style].purple, underline = true },
		StatusLine = { fg = M.palette[M.config.style].fg, bg = M.palette[M.config.style].dark_gray },
		StatusLineNC = { fg = M.palette[M.config.style].gray, bg = M.palette[M.config.style].dark_gray },
		TabLine = { fg = M.palette[M.config.style].gray, bg = M.palette[M.config.style].dark_gray },
		TabLineFill = { fg = M.palette[M.config.style].gray, bg = M.palette[M.config.style].darker_gray },
		TabLineSel = { fg = M.palette[M.config.style].fg, bg = M.palette[M.config.style].bg },
		Title = { fg = M.palette[M.config.style].green, bold = true },
		Visual = { bg = M.palette[M.config.style].gray },
		VisualNOS = { bg = M.palette[M.config.style].gray },
		WarningMsg = { fg = M.palette[M.config.style].yellow },
		Whitespace = { fg = M.palette[M.config.style].gray },
		WildMenu = { fg = M.palette[M.config.style].bg, bg = M.palette[M.config.style].blue },
	}

	return editor
end

function load_plugins()
	-- Plugin specific highlights
	local plugins = {
		-- Add plugin specififc highlights here
		require("evernight.treesitter").setup(highlight, M.palette),
		require("evernight.lsp").setup(highlight, M.palette),
		require("evernight.telescope").setup(highlight, M.palette),
		require("evernight.nvim-tree").setup(highlight, M.palette),
		require("evernight.which-key").setup(highlight, M.palette),
		require("evernight.dashboard").setup(highlight, M.palette),
		require("evernight.lualine").setup(highlight, M.palette),
		require("evernight.git").setup(highlight, M.palette),
		require("evernight.diff").setup(highlight, M.palette),
		require("evernight.hop").setup(highlight, M.palette),
		require("evernight.mini").setup(highlight, M.palette),
		require("evernight.neo-tree").setup(highlight, M.palette),
		require("evernight.neotest").setup(highlight, M.palette),
		require("evernight.barbecue").setup(highlight, M.palette),
		require("evernight.indent-blankline").setup(highlight, M.palette),
		require("evernight.illuminate").setup(highlight, M.palette),
		require("evernight.trouble").setup(highlight, M.palette),
		require("evernight.neogit").setup(highlight, M.palette),
		require("evernight.cmp").setup(highlight, M.palette),
		require("evernight.bufferline").setup(highlight, M.palette),
		require("evernight.notify").setup(highlight, M.palette),
		require("evernight.lightspeed").setup(highlight, M.palette),
		require("evernight.sneak").setup(highlight, M.palette),
		require("evernight.fern").setup(highlight, M.palette),
		require("evernight.barbar").setup(highlight, M.palette),
		require("evernight.lspsaga").setup(highlight, M.palette),
		require("evernight.dap").setup(highlight, M.palette),
		require("evernight.navic").setup(highlight, M.palette),
		require("evernight.ts-rainbow").setup(highlight, M.palette),
		require("evernight.noice").setup(highlight, M.palette),
	}

	return plugins
end

function M.load()
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.g.colors_name = "evernight"
	vim.o.termguicolors = true

	local syntax = load_syntax()
	local editor = load_editor()
	local plugins = load_plugins()

	-- combine all highlights
	local highlights = vim.tbl_extend("force", syntax, editor, plugins, M.config.overrides)

	-- set highlights
	for group, opts in pairs(highlights) do
		highlight(group, opts)
	end
end

function M.setup()
	M.config = vim.tbl_deep_extend("force", M.config, user_config or {})
end

return M
