vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use { 'kdheepak/lazygit.nvim' }
    use { 'lewis6991/gitsigns.nvim' } --Used by gutter/status bar, not  lazygit?

    -- Fuzzy Find
    use { 'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    -- use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use { 'nvim-telescope/telescope-file-browser.nvim' }
    use('nvim-lua/popup.nvim')

    -- Incremental parsing
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use('romgrk/nvim-treesitter-context')

    -- LSP
    ----use('onsails/lspkind-nvim')
    ----use('nvim-lua/lsp_extensions.nvim')
    ----use('glepnir/lspsaga.nvim')
    ----use('simrat39/symbols-outline.nvim')

    use { 'VonHeikemen/lsp-zero.nvim', requires = {
        -- LSP Support
        { 'neovim/nvim-lspconfig' },
        { 'williamboman/mason.nvim' },
        { 'williamboman/mason-lspconfig.nvim' },
        -- Autocompletion
        { 'hrsh7th/nvim-cmp' },
        { 'hrsh7th/cmp-buffer' },
        { 'hrsh7th/cmp-path' },
        { 'saadparwaiz1/cmp_luasnip' },
        { 'hrsh7th/cmp-nvim-lsp' },
        { 'hrsh7th/cmp-nvim-lua' },
        -- Snippets
        { 'L3MON4D3/LuaSnip' },
        { 'rafamadriz/friendly-snippets' },
    } }

    -- Project diagnostics in a floating split
    use {
        "folke/trouble.nvim",
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
            require("trouble").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
            }
        end
    }
    -- Theme
    use 'folke/tokyonight.nvim'
    use({ 'nvim-lualine/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons' } })

    use('mickael-menu/zk-nvim') -- Notes
    use('ThePrimeagen/harpoon')
    -- markdown-preview install with npm

    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = {
            "markdown" } end, ft = { "markdown" }, })
    use('mbbill/undotree')
end)
