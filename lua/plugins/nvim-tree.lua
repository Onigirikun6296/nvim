return {
  'kyazdani42/nvim-tree.lua',
  dependencies = {
    'kyazdani42/nvim-web-devicons' -- optional, for file icon
  },
  config = function()

    require('nvim-tree').setup({view = {relativenumber = true}})
    vim.keymap.set("n", "<c-f>", ":NvimTreeToggle<CR>", {noremap = true})
  end
}
