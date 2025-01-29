return{
    -- LSP-Zero
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v2.x",
        dependencies = {
            -- Required LSP plugins
            {"neovim/nvim-lspconfig"},          -- LSP Support
            {"williamboman/mason.nvim"},        -- Optional: LSP Installer
            {"williamboman/mason-lspconfig.nvim"}, -- Optional: Mason integration

            -- Autocompletion plugins
            {"hrsh7th/nvim-cmp"},               -- Completion engine
            {"hrsh7th/cmp-nvim-lsp"},           -- LSP source for nvim-cmp
            {"hrsh7th/cmp-buffer"},             -- Buffer source
            {"hrsh7th/cmp-path"},               -- Path source

            -- Snippet plugins
            {"L3MON4D3/LuaSnip"},               -- Snippet engine
            {"saadparwaiz1/cmp_luasnip"},       -- Snippet completions
            {
              "L3MON4D3/LuaSnip",
              -- follow latest release.
              version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
              -- install jsregexp (optional!).
              build = "make install_jsregexp",
              dependencies = { "rafamadriz/friendly-snippets" },
            }
        },
    },
    -- Additional Plugins (if needed)
    { "nvim-treesitter/nvim-treesitter", event = "BufReadPost" },
    { "nvim-lua/plenary.nvim" },
}
