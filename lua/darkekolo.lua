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
    Boolean = { fg = p.gray },
    Character = { fg = p.gray },
    Comment = { fg = p.dgray },
    Conditional = { fg = p.dgray },
    Constant = { fg = p.gray },
    Todo = { fg = p.dgray },
    Define = { fg = p.dgray },
    ErrorMsg = { fg = p.red },
    WarningMsg = { fg = p.yellow },
    Float = { fg = p.yellow },
    Function = { fg = p.gray },
    Identifier = { fg = p.gray },
    Keyword = { fg = d.dgray },
    Label = { fg = p.gray },
    NonText = { fg = p.gray },
    Number = { fg = p.gray },
    Operator = { fg = p.dgray },
    PreProc = { fg = p.dgray },
    Special = { fg = p.gray },
    SpecialKey = { fg = p.gray },
    Statement = { fg = p.dgray },
    StorageClass = { fg = p.gray },
    String = { fg = p.yellow },
    Tag = { fg = p.dgray },
    Title = { fg = p.gray },
    Todo = { fg = p.gray },
    Type = { fg = p.gray },
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
