local Remap = require("will.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<leader>fe", ":Telescope file_browser<CR>")
nnoremap("<leader>gg", ":LazyGit<CR>")

nnoremap("<leader>f", function()
    vim.lsp.buf.format()
end)

nnoremap("<leader>u", ":UndotreeShow<CR>")

