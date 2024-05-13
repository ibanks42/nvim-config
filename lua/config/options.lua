vim.lsp.handlers["workspace/workspaceFolders"] = nil

vim.diagnostic.config({
	virtual_text = true,
	underline = true,
	signs = true,
	update_in_insert = true,
	severity_sort = true,
})

return {
	{
		"nvim-treesitter/nvim-treesitter",
		event = { "BufReadPost", "BufNewFile" },
		opts = {
			sync_install = false,
			textobjects = {
				swap = {
					enable = true,
					swap_next = {
						["[a"] = "@parameter.inner",
					},
					swap_previous = {
						["]a"] = "@parameter.inner",
					},
				},
				lsp_interop = {
					enable = true,
					border = "none",
					floating_preview_opts = {},
					peek_definition_code = {
						["<leader>df"] = "@function.outer",
						["<leader>dF"] = "@class.outer",
					},
				},
			},
		},
	},
}
