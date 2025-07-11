-- main pallete

-- theme
local theme = {
    String = {
        fg = "Cyan",
        bg = "White",
        gui = "bold,italic"
    },
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
