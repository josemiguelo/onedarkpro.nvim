local util = require("plenary.async.util")
local async = require("plenary.async.tests")

local hex = function(n)
    if n then
        return string.format("#%06x", n)
    end
end

describe("Using the cache", function()
    async.before_each(function()
        vim.cmd(":e tests/stubs/test.txt")
        vim.o.background = "dark"
    end)

    async.it("it should be able to generate a file", function()
        util.scheduler()
        require("onedarkpro.lib.cache").generate(true)
        assert.equals(require("onedarkpro.lib.cache").exists(), true)
    end)

    async.it("it should be able to generate a file which includes custom colors and groups", function()
        util.scheduler()

        local lines = {}
        for line in io.lines(require("onedarkpro.config").config.cache_path .. "onedark.lua") do
            lines[#lines + 1] = line
        end

        assert.equals(lines[3], 'if vim.g.colors_name then')

        local count = 0
        for _, line in ipairs(lines) do
            if line:find("Title") then
                count = count + 1
                assert.equals(line, 'vim.api.nvim_set_hl(0, "Title", { fg = "#98c379" })')
            end
            if line:find("diffAdded") then
                count = count + 1
                assert.equals(line, 'vim.api.nvim_set_hl(0, "diffAdded", { fg = "#98c379" })')
            end
            if line:find("@conditional.python") then
                count = count + 1
                assert.equals(line, 'vim.api.nvim_set_hl(0, "@conditional.python", { fg = "#c678dd", italic = true })')
            end
            if line:find("@constant.builtin.php") then
                count = count + 1
                assert.equals(line, 'vim.api.nvim_set_hl(0, "@constant.builtin.php", { fg = "#d19a66" })')
            end
            if line:find("@field.rust") then
                count = count + 1
                assert.equals(line, 'vim.api.nvim_set_hl(0, "@field.rust", { fg = "#e06c75" })')
            end
        end

        assert.equals(5, count)
    end)

    async.it("it should be able to delete the cache file", function()
        util.scheduler()
        vim.cmd("OnedarkproClean")
        assert.equals(require("onedarkpro.lib.cache").exists(), false)
    end)
end)
