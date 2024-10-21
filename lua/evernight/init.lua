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

M.palette = {
	dark = {
		bg = "#1c1e26",
		fg = "#c3ccdc",
		red = "#e95678",
		green = "#29d398",
		yellow = "#fac29a",
		blue = "#26bbd9",
		purple = "#ee64ae",
		cyan = "#59e3e3",
		orange = "#f09383",
		pink = "#f075b7",
		teal = "#1abc9c",
		gray = "#6c7086",
		light_gray = "#9ca0b0",
		dark_gray = "#2e303e",
		darker_gray = "#25272e",
		black = "#16161c",
		bright_red = "#ec6a88",
		bright_green = "#3fdaa4",
		bright_yellow = "#fbc3a7",
		bright_blue = "#3fc6de",
		bright_purple = "#f075b7",
		bright_cyan = "#6be6e6",
		bright_white = "#d5d8da",
	},
	light = {
		bg = "#faf4ed",
		fg = "#575279",
		red = "#b4637a",
		green = "#286983",
		yellow = "#ea9d34",
		blue = "#56949f",
		purple = "#907aa9",
		cyan = "#d7827e",
		orange = "#fe640b",
		pink = "#eb6f92",
		teal = "#31748f",
		gray = "#9893a5",
		light_gray = "#797593",
		dark_gray = "#f2e9de",
		darker_gray = "#ebe0d0",
		black = "#f4ede8",
		bright_red = "#c26d85",
		bright_green = "#2d7490",
		bright_yellow = "#f0a23b",
		bright_blue = "#5ca7b4",
		bright_purple = "#9a82b8",
		bright_cyan = "#e4a696",
		bright_white = "#575279",
	},
}

local function highlight(group, opts)
	vim.api.nvim_set_hl(0, group, opts)
end

-- Color shade Function
local function shade(hex, amount)
	hex = hex:gsub("#", "")
	local r = tonumber(hex:sub(1, 2), 16)
	local g = tonumber(hex:sub(3, 4), 16)
	local b = tonumber(hex:sub(5, 6), 16)
	r = math.floor(math.min(math.max(r * amount, 0), 255))
	g = math.floor(math.min(math.max(r * amount, 0), 255))
	b = math.floor(math.min(math.max(r * amount, 0), 255))

	return string.format("#%02x%02x%02x", r, g, b)
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

	-- File-type specific highlights
	syntax.pythonFunction = { fg = M.palette[M.config.style].blue, italic = M.config.italic_functions }
	syntax.pythonClass = { fg = M.palette[M.config.style].yellow, bold = true }
	syntax.rustModPath = { fg = M.palette[M.config.style].blue }
	syntax.rustAttribute = { fg = M.palette[M.config.style].cyan }

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

	-- Transparency support
	if M.config.transparent then
		editor.Normal.bg = "None"
		editor.NormalFloat.bg = "NONE"
		editor.SignColumn.bg = "NONE"
	end

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

		-- Telescope
		TelescopeBorder = { fg = M.palette[M.config.style].gray },
		TelescopePromptBorder = { fg = M.palette[M.config.style].blue },
		TelescopeResultsBorder = { fg = M.palette[M.config.style].gray },
		TelescopePreviewBorder = { fg = M.palette[M.config.style].gray },

		-- NvimTree
		NvimTreeFolderIcon = { fg = M.palette[M.config.style].blue },
		NvimTreeFolderName = { fg = M.palette[M.config.style].blue },
		NvimTreeOpenedFolderName = { fg = M.palette[M.config.style].blue, bold = true },

		-- GitSigns
		GitSignsAdd = { fg = M.palette[M.config.style].green },
		GitSignsChange = { fg = M.palette[M.config.style].yellow },
		GitSignsDelete = { fg = M.palette[M.config.style].red },
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

	-- Set terminal colors
	vim.g.terminal_color_0 = M.palette[M.config.style].black
	vim.g.terminal_color_1 = M.palette[M.config.style].red
	vim.g.terminal_color_2 = M.palette[M.config.style].green
	vim.g.terminal_color_3 = M.palette[M.config.style].yellow
	vim.g.terminal_color_4 = M.palette[M.config.style].blue
	vim.g.terminal_color_5 = M.palette[M.config.style].purple
	vim.g.terminal_color_6 = M.palette[M.config.style].cyan
	vim.g.terminal_color_7 = M.palette[M.config.style].fg
	vim.g.terminal_color_8 = M.palette[M.config.style].gray
	vim.g.terminal_color_9 = M.palette[M.config.style].bright_red
	vim.g.terminal_color_10 = M.palette[M.config.style].bright_green
	vim.g.terminal_color_11 = M.palette[M.config.style].bright_yellow
	vim.g.terminal_color_12 = M.palette[M.config.style].bright_blue
	vim.g.terminal_color_13 = M.palette[M.config.style].bright_purple
	vim.g.terminal_color_14 = M.palette[M.config.style].bright_cyan
	vim.g.terminal_color_15 = M.palette[M.config.style].bright_white
end

function M.setup(user_config)
	M.config = vim.tbl_deep_extend("force", M.config, user_config or {})
end

-- Lualine theme
M.lualine = function()
	local c = M.palette[M.config.style]
	return {
		normal = {
			a = { fg = c.bg, bg = c.blue, gui = "bold" },
			b = { fg = c.fg, bg = c.dark_gray },
			c = { fg = c.fg, bg = c.darker_gray },
		},
		insert = { a = { fg = c.bg, bg = c.green, gui = "bold" } },
		visual = { a = { fg = c.bg, bg = c.purple, gui = "bold" } },
		replace = { a = { fg = c.bg, bg = c.red, gui = "bold" } },
		inactive = {
			a = { fg = c.gray, bg = c.darker_gray, gui = "bold" },
			b = { fg = c.gray, bg = c.darker_gray },
			c = { fg = c.gray, bg = c.darker_gray },
		},
	}
end

return M
