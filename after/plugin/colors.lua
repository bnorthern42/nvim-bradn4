function ColorMyEditor(color)
	color = color or "onedark"
	vim.cmd.colorscheme(color)

	--vim.api.nvmim_set_hl(0, "Normal", { bg = "none"})	
	-- vim.api.nvmim_set_hl(0, "NormalFloat", { bg = "none"})

	-- Lua
	require('onedark').setup {
		style = 'darker'
	}
	require('onedark').load()
end

ColorMyEditor()
