local M = {}

---Get the highlight groups for the filetype
---@param theme table
---@param config table
---@return table
function M.groups(theme, config)
    return {
        ["@field.yaml"] = { fg = theme.palette.red },
        ["@function.call.yaml"] = { fg = theme.palette.green },
        ["@punctuation.bracket.yaml"] = { fg = theme.palette.orange },
        ["@parameter.yaml"] = { fg = theme.palette.green },
        ["@string.yaml"] = { fg = theme.palette.green },
    }
end

return M
