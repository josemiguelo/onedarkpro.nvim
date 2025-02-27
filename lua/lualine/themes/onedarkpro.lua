local colors = require("onedarkpro").get_colors()
local config = require("onedarkpro.config").config

local onedarkpro = {}

onedarkpro.normal = {
    a = { bg = colors.green, fg = colors.bg },
    b = { bg = colors.fg_gutter, fg = colors.green },
    c = { bg = colors.bg_statusline, fg = colors.fg },
}

onedarkpro.insert = {
    a = { bg = colors.blue, fg = colors.bg },
    b = { bg = colors.fg_gutter, fg = colors.blue },
}

onedarkpro.command = {
    a = { bg = colors.purple, fg = colors.bg },
    b = { bg = colors.fg_gutter, fg = colors.purple },
}

onedarkpro.visual = {
    a = { bg = colors.yellow, fg = colors.bg },
    b = { bg = colors.fg_gutter, fg = colors.yellow },
}

onedarkpro.replace = {
    a = { bg = colors.red, fg = colors.bg },
    b = { bg = colors.fg_gutter, fg = colors.red },
}

local inactive_bg = config.options.window_unfocused_color and colors.color_column or colors.bg
onedarkpro.inactive = {
    a = { bg = inactive_bg, fg = colors.blue },
    b = { bg = inactive_bg, fg = colors.fg_gutter_inactive, gui = "bold" },
    c = { bg = inactive_bg, fg = colors.fg_gutter_inactive },
}

return onedarkpro
