local config = {}

function config.telescope()
  require("telescope").setup({
    defaults = {
        mappings = {
            n = {
                ["<C-j>"] = require("telescope.actions").close,
            },
            i = {
                ["<C-j>"] = require("telescope.actions").close,
            },
        },
        file_ignore_patterns = {
            "node_modules/",
            ".git/",
            "target/",
            "%.lock",
            "go/pkg/",
        },
        prompt_prefix = "   ",
        selection_caret = "  ",
        entry_prefix = "  ",

        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {
                prompt_position = "top",
                preview_width = 0.55,
                results_width = 0.8,
            },
            vertical = {

                mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
        },

        path_display = { "truncate" },
        winblend = 0,
        border = {},
        borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
        color_devicons = true,
        set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
        -- Developer configurations: Not meant for general override
        buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,
    },
})
end

function config.neogit()
    require("neogit").setup({
        kind = "split",
        signs = {
            -- { CLOSED, OPENED }
            section = { "", "" },
            item = { "", "" },
            hunk = { "", "" },
        },
        integrations = { diffview = true },
    })
end
return config
