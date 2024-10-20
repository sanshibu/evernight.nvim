local M = {}

function M.setup(highlight, palette)
	highlight("illuminatedWord", { bg = palette.dark_gray })
	highlight("illuminatedCurWord", { bg = palette.dark_gray })
	highlight("IlluminatedWordText", { bg = palette.dark_gray })
	highlight("IlluminatedWordRead", { bg = palette.dark_gray })
	highlight("IlluminatedWordWrite", { bg = palette.dark_gray })
end

return M
