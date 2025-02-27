local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@param config table
---@return table
function M.groups(theme, config)
    return {
        BqfPreviewBorder = { fg = theme.palette.gray },
        BqfPreviewRange = { fg = theme.palette.green },
        BqfSign = { fg = theme.palette.purple, style = config.options.bold },
    }
end

return M
