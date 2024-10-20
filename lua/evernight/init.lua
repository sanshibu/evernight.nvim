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
    bg = "#1a1b26",
    fg = "#c0caf5",
    red = "#f7768e",
    green = "#9ece6a",
    yellow = "#e0af68",
    blue = "#7aa2f7",
    purple = "#bb9af7",
    cyan = "#7dcfff",
    orange = "#ff9e64",
    gray = "#565f89",
    light_gray = "#a9b1d6",
    dark_gray = "#24283b",
    darker_gray = "#1f2335",
    black = "#16161e",
    bright_red = "#ff7a93",
    bright_green = "#b9f27c",
    bright_yellow = "#ff9e64",
    bright_blue = "#7da6ff",
    bright_purple = "#bb9af7",
    bright_cyan = "#0db9d7",
    bright_white = "#acb0d0",
  },
  light = {
    bg = "#e1e2e7",
    fg = "#3760bf",
    red = "#f52a65",
    green = "#587539",
    yellow = "#8c6c3e",
    blue = "#2e7de9",
    purple = "#9854f1",
    cyan = "#007197",
    orange = "#b15c00",
    gray = "#848cb5",
    light_gray = "#5a638c",
    dark_gray = "#c4c8da",
    darker_gray = "#b3b8d1",
    black = "#e9e9ed",
    bright_red = "#f52a65",
    bright_green = "#587539",
    bright_yellow = "#8c6c3e",
    bright_blue = "#2e7de9",
    bright_purple = "#9854f1",
    bright_cyan = "#007197",
    bright_white = "#3760bf",
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

load function load_plugins()

  -- Plugin specific highlights
  local plugins = {
    -- Add plugin specififc highlights here
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
  for group, opts in pairs(hightlights) do
    highlight(group, opts)
  end
end

function M.setup()
  M.config = vim.tbl_deep_extend("force", M.config, user_config or {})
end

return M
