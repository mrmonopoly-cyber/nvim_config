local lspconfig = require'lspconfig'

lspconfig.rust_analyzer.setup({
    settings = {
        ["rust-analyzer"] = {
            diagnostics = {
                enable = true;
            },
            checkOnSave = {
                command = "clippy", -- Runs Clippy to catch warnings/errors
            },
            imports = {
                granularity = {
                    group = "module",
                },
                prefix = "self",
            },
            cargo = {
                allFeatures = true,
            },
            procMacro = {
                enable = true
            },
        }
    }
})
