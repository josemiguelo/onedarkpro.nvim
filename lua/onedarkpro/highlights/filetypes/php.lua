local M = {}

---Get the highlight groups for the filetype
---@param theme table
---@param config table
---@return table
function M.groups(theme, config)
    return {
        ["@method.php"] = { fg = theme.palette.blue, style = config.options.bold },
        ["@method.call.php"] = { link = "@method.php" },
        ["@function.builtin.php"] = { fg = theme.palette.cyan },
        ["@namespace.php"] = { fg = theme.palette.yellow, style = config.options.bold },
        ["@constant.builtin.php"] = { fg = theme.palette.orange },
    }
end

return M
