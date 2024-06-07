return {
	'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate',
		config = function()
			require'nvim-treesitter.configs'.setup {
			  highlight = {
			    enable = true,
			  },
			  ensure_installed = {
				  'c', 'cpp', 'rust', 'lua', 'python', 'typescript', 'javascript', 'css'}, -- Or run :TSUpdate org
			  sync_install = false
			}
		end
}
