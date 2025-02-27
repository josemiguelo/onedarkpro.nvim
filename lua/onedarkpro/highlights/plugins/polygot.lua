local M = {}

---Get the highlight groups for the plugin
---@param theme table
---@param config table
---@return table
function M.groups(theme, config)
    return {
        -- CSS
        cssAttrComma = { fg = theme.palette.purple },
        cssAttributeSelector = { fg = theme.palette.green },
        cssBraces = { fg = theme.palette.red },
        cssClassName = { fg = theme.palette.orange },
        cssClassNameDot = { fg = theme.palette.orange },
        cssDefinition = { fg = theme.palette.purple },
        cssFontAttr = { fg = theme.palette.orange },
        cssFontDescriptor = { link = "cssDefinition" },
        cssFunctionName = { fg = theme.palette.blue },
        cssIdentifier = { fg = theme.palette.blue },
        cssImportant = { link = "cssDefinition" },
        cssInclude = { fg = theme.palette.fg },
        cssIncludeKeyword = { link = "cssDefinition" },
        cssMediaType = { fg = theme.palette.orange },
        cssProp = { fg = theme.palette.fg },
        cssPseudoClassId = { fg = theme.palette.orange },
        cssSelectorOp = { link = "cssDefinition" },
        cssSelectorOp2 = { link = "cssDefinition" },
        cssTagName = { fg = theme.palette.red },

        -- HTML
        htmlArg = { fg = theme.palette.purple },
        htmlBold = { fg = theme.palette.orange },
        htmlItalic = { fg = theme.palette.purple },
        htmlLink = { fg = theme.palette.cyan },
        htmlH1 = { fg = theme.palette.red },
        htmlH2 = { link = "htmlH1" },
        htmlH3 = { link = "htmlH1" },
        htmlH4 = { link = "htmlH1" },
        htmlH5 = { link = "htmlH1" },
        htmlH6 = { link = "htmlH1" },
        htmlSpecialChar = { link = "SpecialChar" },
        htmlSpecialTagName = { fg = theme.palette.red },
        htmlTag = { link = "TSTag" },
        htmlEndTag = { link = "htmlTag" },
        htmlTagN = { fg = theme.palette.red },
        htmlTagName = { fg = theme.palette.red },
        htmlTitle = { fg = theme.palette.fg },

        -- Javascript
        javascriptBraces = { fg = theme.palette.red },
        javaScriptFunction = { fg = theme.palette.purple },
        javaScriptIdentifier = { fg = theme.palette.purple },
        javaScriptNull = { fg = theme.palette.orange },
        javaScriptNumber = { link = "Number" },
        javaScriptRequire = { fg = theme.palette.cyan },
        javaScriptReserved = { fg = theme.palette.purple },
        ---- https://github.com/pangloss/vim-javascript included in Vim-Polygot
        jsArrowFunction = { fg = theme.palette.purple },
        jsClassKeyword = { link = "jsArrowFunction" },
        jsClassMethodType = { link = "jsArrowFunction" },
        jsDocParam = { fg = theme.palette.blue },
        jsDocTags = { fg = theme.palette.purple },
        jsExport = { link = "jsArrowFunction" },
        jsExportDefault = { link = "jsExport" },
        jsExtendsKeyword = { link = "jsClassKeyword" },
        jsFrom = { link = "jsExport" },
        jsFuncCall = { fg = theme.palette.blue },
        jsFunction = { link = "jsArrowFunction" },
        jsGenerator = { fg = theme.palette.yellow },
        jsGlobalObjects = { link = "jsGenerator" },
        jsImport = { link = "jsExport" },
        jsModuleAs = { link = "jsExport" },
        jsModuleWords = { link = "jsExport" },
        jsModules = { link = "jsExport" },
        jsNull = { fg = theme.palette.orange },
        jsOperator = { fg = theme.palette.purple },
        jsStorageClass = { link = "jsClassKeyword" },
        jsSuper = { fg = theme.palette.red },
        jsTemplateBraces = { fg = theme.palette.red },
        jsTemplateVar = { fg = theme.palette.green },
        jsThis = { fg = theme.palette.red },
        jsUndefined = { fg = theme.palette.orange },

        -- JSON
        jsonCommentError = { fg = theme.palette.fg },
        jsonKeyword = { fg = theme.palette.red },
        jsonBoolean = { link = "Boolean" },
        jsonNumber = { link = "Number" },
        jsonQuote = { fg = theme.palette.fg },
        jsonMissingCommaError = { fg = theme.palette.red, style = "reverse" },
        jsonNoQuotesError = { link = "jsonMissingCommaError" },
        jsonNumError = { link = "jsonMissingCommaError" },
        jsonString = { fg = theme.palette.green },
        jsonStringSQError = { link = "jsonMissingCommaError" },
        jsonSemicolonError = { link = "jsonMissingCommaError" },

        -- Markdown
        markdownBlockquote = { fg = theme.palette.gray },
        markdownBold = { fg = theme.palette.orange },
        markdownCode = { fg = theme.palette.green },
        markdownCodeBlock = { link = "markdownCode" },
        markdownCodeDelimiter = { link = "markdownCode" },
        markdownH1 = { fg = theme.palette.red },
        markdownH2 = { link = "markdownH1" },
        markdownH3 = { link = "markdownH1" },
        markdownH4 = { link = "markdownH1" },
        markdownH5 = { link = "markdownH1" },
        markdownH6 = { link = "markdownH1" },
        markdownHeadingDelimiter = { fg = theme.palette.red },
        markdownHeadingRule = { link = "markdownBlockquote" },
        markdownId = { fg = theme.palette.purple },
        markdownIdDeclaration = { fg = theme.palette.blue },
        markdownIdDelimiter = { link = "markdownId" },
        markdownItalic = { fg = theme.palette.purple },
        markdownLinkDelimiter = { fg = theme.palette.purple },
        markdownLinkText = { fg = theme.palette.blue },
        markdownListMarker = { fg = theme.palette.red },
        markdownOrderedListMarker = { link = "markdownListMarker" },
        markdownRule = { link = "markdownBlockquote" },
        markdownUrl = { fg = theme.palette.cyan },

        -- Python
        pythonNone = { fg = theme.palette.yellow },
        pythonBoolean = { link = "pythonNone" },
        pythonClass = { fg = theme.palette.yellow },
        pythonParens = { fg = theme.palette.red },
        pythonBuiltinObj = { fg = theme.palette.cyan },
        pythonSpaceError = { bg = theme.palette.red, fg = theme.palette.fg },
        pythonString = { fg = theme.palette.green },
        pythonDot = { fg = theme.palette.fg },
        pythonImport = { fg = theme.palette.purple },
        pythonRepeat = { link = "pythonImport" },
        pythonStatement = { link = "pythonImport" },
        pythonOperator = { link = "pythonImport" },

        -- Ruby
        rubyBlockParameter = { fg = theme.palette.red },
        rubyBlockParameterList = { link = "rubyBlockParameter" },
        rubyClass = { fg = theme.palette.purple },
        rubyConstant = { fg = theme.palette.yellow },
        rubyControl = { link = "rubyClass" },
        rubyEscape = { fg = theme.palette.red },
        rubyFunction = { fg = theme.palette.blue },
        rubyGlobalVariable = { fg = theme.palette.red },
        rubyInclude = { fg = theme.palette.blue },
        rubyIncluderubyGlobalVariable = { link = "rubyGlobalVariable" },
        rubyInstanceVariable = { link = "rubyGlobalVariable" },
        rubyInterpolation = { fg = theme.palette.cyan },
        rubyInterpolationDelimiter = { fg = theme.palette.red },
        rubyRegexp = { fg = theme.palette.cyan },
        rubyRegexpDelimiter = { link = "rubyRegexp" },
        rubyStringDelimiter = { fg = theme.palette.green },
        rubySymbol = { fg = theme.palette.cyan },

        -- SASS
        sassidChar = { fg = theme.palette.red },
        sassClassChar = { fg = theme.palette.orange },
        sassInclude = { fg = theme.palette.purple },
        sassMixing = { link = "sassInclude" },
        sassMixinName = { fg = theme.palette.blue },
        scssExtend = { link = "sassInclude" },
        scssImport = { link = "sassInclude" },
        scssMixin = { link = "sassMixing" },
        scssSelectorName = { fg = theme.palette.orange },
        scssVariable = { link = "sassMixing" },
    }
end

return M
