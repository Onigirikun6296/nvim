return {
  'jbyuki/nabla.nvim',
  config = function()
    vim.keymap.set("n", "<leader>v", function() 
      require("nabla").enable_virt()
      vim.opt.concealcursor = 'nc'
	end, {noremap = true})
    vim.keymap.set("n", "<leader>p", function()
      require("nabla").popup()
      -- Customize with popup({border = ...})  : `single` (default), `double`, `rounded`
    end, {noremap = true})
  end
}
