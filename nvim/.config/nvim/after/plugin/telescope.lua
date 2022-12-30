local telescope = require('telescope')
local builtin = require('telescope.builtin')

local Remap = require("will.keymap")
local nnoremap = Remap.nnoremap

telescope.setup({
    defaults = {
        prompt_prefix = " >",
    },
    pickers = {
        buffers = {
            show_all_buffers = true,
            sort_lastused = true,
            theme = "dropdown",
            previewer = false,
            mappings = {
                n = {
                    ["d"] = "delete_buffer",
                }
            }
        }
    },
    extensions = {
        file_browser = {
            theme = "ivy",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
                ["i"] = {
                    -- your custom insert mode mappings
                },
                ["n"] = {
                    -- your custom normal mode mappings
                },
            },
        },
        fzf = {
            fuzzy = true, -- false will only do exact matching
            override_generic_sorter = true, -- override the generic sorter
            override_file_sorter = true, -- override the file sorter
            case_mode = "smart_case", -- or "ignore_case" or "respect_case"
            -- the default case_mode is "smart_case"
        }
    }
})

telescope.load_extension("file_browser")
telescope.load_extension('fzf')

nnoremap("<C-p>", ":Telescope<CR>")

nnoremap("<leader>fg", function()
    builtin.live_grep()
end)

nnoremap("<Leader>ff", function()
    builtin.find_files()
end)

nnoremap("<leader>fw", function()
    builtin.grep_string { search = vim.fn.expand("<cword>") }
end)

nnoremap("<leader>fb", function()
    builtin.buffers()
end)

nnoremap("<leader>vh", function()
    builtin.help_tags()
end)
