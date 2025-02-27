local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@param config table
---@return table
function M.groups(theme, config)
    return {
        DebugBreakpoint = { fg = theme.palette.red },
        DebugBreakpointLine = { fg = theme.palette.red },
        DebugHighlight = { fg = theme.palette.blue },
        DebugHighlightLine = { fg = theme.palette.purple },
        NvimDapVirtualText = { fg = theme.palette.cyan },
    }
end

return M
