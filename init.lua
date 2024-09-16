vim.opt.termguicolors  = true
vim.opt.mouse          = "a"
vim.opt.undofile       = true
vim.opt.shell          = vim.env.SHELL
vim.opt.number         = true
vim.opt.relativenumber = true
vim.opt.clipboard      = "unnamedplus"

vim.opt.tabstop     = 4
vim.opt.shiftwidth  = 4
vim.opt.softtabstop = 4
vim.opt.expandtab   = true
vim.opt.autoindent  = true
vim.opt.smartindent = true

vim.opt.completeopt = "menu,menuone,noselect"

vim.opt.updatetime  = 300
vim.opt.ttimeoutlen = 100

vim.opt.spell       = true
vim.opt.spelllang   = "en_gb"

vim.opt.conceallevel  = 2
vim.opt.concealcursor = 'nc'

vim.g.mapleader     = " "

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  spec = {
    { import = "plugins" },
  },
  -- checker = { enabled = true },
  -- rocks = { enabled = false },
})

vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- "Navigate by display lines instead of regular lines
vim.keymap.set("", "j", "gj", {noremap = true})
vim.keymap.set("", "k", "gk", {noremap = true})

-- "Switch splits quickly
vim.keymap.set("", "<c-j>", "<c-w>j", {noremap = true})
vim.keymap.set("", "<c-k>", "<c-w>k", {noremap = true})
vim.keymap.set("", "<c-h>", "<c-w>h", {noremap = true})
vim.keymap.set("", "<c-l>", "<c-w>l", {noremap = true})

-- " Open Terminal
vim.keymap.set("n", "tt", ":split<Bar>terminal<CR>", {noremap = true})


-- "Save me from misspressing shift
vim.cmd("command! W :w")
vim.cmd("command! Q :q")


vim.cmd("set noshowmode")
vim.cmd("let g:sonokai_style = 'shusia'")
vim.cmd("let g:sonokai_better_performance = 1")
vim.cmd("let g:sonokai_enable_italic = 1")
vim.cmd("let g:sonokai_diagnostic_virtual_text = 'colored'")
vim.cmd("colorscheme sonokai")
vim.cmd("set dictionary=spell,~/.config/nvim/dict/en.dict,~/.config/nvim/dict/el.dict")
