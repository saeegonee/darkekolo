-- main pallete
local p = {
    dark = "#000000",
    gray = "#d4d4d4",
    dgray = "#686868",
    yellow = "#fbca60",
    red = "#ff0000",
}

-- theme
local theme = {
    Normal = { fg = p.gray },
    NormalNC = { fg = p.gray },
    NormalFloat = { fg = p.gray },
    String = { fg = p.yellow, gui = "italic" },
}

function link(group, table)

    local fg = table.fg or "NONE"
    local bg = table.bg or "NONE"
    local gui = table.gui or "NONE"

    vim.cmd("hi " .. group .. " guifg=" .. fg .. " guibg=" .. bg .. " gui=" .. gui)
end

local M = {}

function M.colorscheme()
    -- construct colorscheme. Good playlist at:
    -- https://www.youtube.com/watch?v=qyKeorLz-Cg&list=PLOe6AggsTaVvjY25kxHlGccbYfe7hSqtp&index=3

    if vim.g.colors_name then
        vim.cmd('hi clear')
    end
    
    -- setup
    vim.opt.termguicolors = true
    vim.g.colors_name = 'darkekolo'
    
    -- links
    for group, table in pairs(theme) do
        link(group, table)
    end
end

return M
