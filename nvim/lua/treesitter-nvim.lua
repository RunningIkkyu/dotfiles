local ts_config = require("nvim-treesitter.configs")

ts_config.setup {
    ensure_installed = {
        "go",
        --"javascript",
        "html",
        --"css",
        "bash",
        "lua",
        "json",
        "python"
    },
    highlight = {
        enable = true,
        use_languagetree = true
    },
    rainbow = {
        enable = true,
        extended_mode = true, -- Highlight also non-parentheses delimiters, boolean or table: lang -> boolean
        max_file_lines = 2000, -- Do not enable for files with more than 1000 lines, int
    }
}
