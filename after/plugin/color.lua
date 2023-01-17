function ColorMyPencils(color) 
	color = color or "moonfly"
	vim.cmd.colorscheme(color)
end

ColorMyPencils()

-- Lua initialization file
vim.cmd [[colorscheme moonfly]]
vim.g.moonflyCursorColor = true


