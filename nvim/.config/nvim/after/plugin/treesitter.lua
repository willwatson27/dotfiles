require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "bash", "help", "c", "lua", "javascript", "typescript", "rust" },
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },
}
