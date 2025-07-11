local scheme = {}

-- main pallete
local pallete = {
    bg = "#000000",
}

-- theme
local theme = {
    Normal = { fg = pallete.bg, bg = pallete.bg },
}

function scheme.build()
    -- construct colorscheme. Good playlist at:
    -- https://www.youtube.com/watch?v=qyKeorLz-Cg&list=PLOe6AggsTaVvjY25kxHlGccbYfe7hSqtp&index=3

    if vim.g.colors_name then
        vim.cmd('hi clear')
    end
    
    -- setup
    vim.opt.termguicolors = true
    vim.g.colors_name = 'darkekolo'
    
    -- links
    for group, color in pairs(theme) do
        -- vim.cmd('hi <group> <color>')
    end
end

return scheme
