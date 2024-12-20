return {
    {
        "nvim-lualine/lualine.nvim",
        event = "VeryLazy",
        opts = function(_, opts)
            opts.options.component_separators = { left = "", right = "" }
            opts.options.section_separators = { left = "", right = "" }
        end,
        -- opts = function(_, opts)
        --     table.insert(opts.sections.lualine_x, {
        --         function()
        --             return "😄"
        --         end,
        --     })
        -- end,
    },
}
