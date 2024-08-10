return {
    "folke/noice.nvim",
    event = "VimEnter",
    requires = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify",
    },
    config = function()
        require("noice").setup({
            -- Konfiguracja pluginu
            cmdline = {
                view = "cmdline_popup", -- Użyj okna popup dla command-line
                format = {
                    cmdline = { pattern = "^:", icon = "👉 ", lang = "vim" },
                },
            },
            -- Inne opcje konfiguracji
        })
    end,
}
