return {
  'jbyuki/nabla.nvim',
  config = function()
    vim.keymap.set("n", "<leader>v", require("nabla").enable_virt, {noremap = true})
    vim.keymap.set("n", "<leader>p", function()
      require("nabla").popup()
      -- Customize with popup({border = ...})  : `single` (default), `double`, `rounded`
    end, {noremap = true})
  end
}
