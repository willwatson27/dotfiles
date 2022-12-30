require('will.packer')
require('will.set')
require('will.keymap')
require('will.remap')

local autocmd = vim.api.nvim_create_autocmd

autocmd({"BufWritePre"}, {
    pattern = "*",
    command = "%s/\\s\\+$//e | %s/\r$//e",
})

vim.opt.clipboard = 'unnamedplus'
