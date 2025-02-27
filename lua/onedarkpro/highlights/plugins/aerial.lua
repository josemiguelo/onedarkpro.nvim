local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@param config table
---@return table
function M.groups(theme, config)
    return {
        AerialClass = { fg = theme.palette.purple },
    }
end

return M
