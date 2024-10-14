local M = {}

function M.setup(highlight, palette)
	-- Lualine doesn't use traditional highlight groups
	-- Instead, you would typically configure it directly in your Neovim config
	-- However, we can define some custom highlight groups that can be used in Lualine config
	highlight("LualineMode", { fg = palette.bg, bg = palette.blue, bold = true })
	highlight("LualineBranch", { fg = palette.purple, bg = palette.dark_gray })
	highlight("LualineFilename", { fg = palette.fg, bg = palette.dark_gray })
	highlight("LualineProgress", { fg = palette.fg, bg = palette.dark_gray })
	highlight("LualineLocation", { fg = palette.fg, bg = palette.dark_gray })
end

return M
