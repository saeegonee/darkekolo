-- main pallete
local p = {
    dark = "#0c0c0c",
    gray = "#aaaaaa",
    dgray = "#686868",
    yellow = "#fbca60",
    red = "#ff0000",
}

-- theme
local theme = {
	Normal = { fg = p.gray, bg = p.dark },
	NormalNC = { fg = p.gray, bg = p.dark },
	SignColumn = { fg = p.gray },
	FoldColumn = { fg = p.gray },
	VertSplit = { fg = p.gray },
	Folded = { fg = p.gray },
	EndOfBuffer = { fg = p.gray },
	ColorColumn = { fg = p.gray },
	Conceal = { fg = p.gray },
	QuickFixLine = { fg = p.gray },
	Terminal = { fg = p.gray },

	IncSearch = { fg = p.gray },
	Search = { fg = p.gray },
	Visual = { fg = p.gray },
	VisualNOS = { fg = p.gray },

	Cursor = { fg = p.gray },
	CursorColumn = { fg = p.gray },
	CursorIM = { fg = p.gray },
	CursorLine = { fg = p.gray },
	CursorLineNr = { fg = p.gray },
	lCursor = { fg = p.gray },
	LineNr = { fg = p.gray },
	TermCursor = { fg = p.gray },
	TermCursorNC = { fg = p.gray },

	DiffAdd = { fg = p.gray },
	DiffChange = { fg = p.gray },
	DiffDelete = { fg = p.gray },
	DiffText = { fg = p.gray },

	Directory = { fg = p.gray },
	ErrorMsg = { fg = p.red },
	WarningMsg = { fg = p.yellow },
	ModeMsg = { fg = p.gray },
	MoreMsg = { fg = p.gray },
	MsgArea = { fg = p.gray },
	MsgSeparator = { fg = p.gray },
	Question = { fg = p.gray },

	MatchParen = { fg = p.gray },
	NonText = { fg = p.gray },
	SpecialKey = { fg = p.gray },
	Whitespace = { fg = p.gray },

	Pmenu = { fg = p.gray },
	PmenuSbar = { fg = p.gray },
	PmenuSel = { fg = p.gray },
	PmenuThumb = { fg = p.gray },
	WildMenu = { fg = p.gray },
	NormalFloat = { fg = p.gray },

	TabLine = { fg = p.gray },
	TabLineFill = { fg = p.gray },
	TabLineSel = { fg = p.gray },
	StatusLine = { fg = p.gray },
	StatusLineNC = { fg = p.gray },

	SpellBad = { fg = p.gray },
	SpellCap = { fg = p.gray },
	SpellLocal = { fg = p.gray },
	SpellRare = { fg = p.gray },

		-- syntax
	Boolean = { fg = p.gray },
	Character = { fg = p.gray },
	Conditional = { fg = p.gray },
	Constant = { fg = p.gray },
	Debug = { fg = p.gray },
	Define = { fg = p.gray },
	Error = { fg = p.gray },
	Exception = { fg = p.gray },
	Float = { fg = p.yellow },
	FloatBorder = { fg = p.gray },
	Function = { fg = p.gray },
	Include = { fg = p.gray },
	Keyword = { fg = p.gray },
	Label = { fg = p.gray },
	Macro = { fg = p.gray },
	Number = { fg = p.gray },
	Operator = { fg = p.gray },
	PreCondit = { fg = p.gray },
	PreProc = { fg = p.gray },
	Repeat = { fg = p.gray },
	Special = { fg = p.gray },
	SpecialChar = { fg = p.gray },
	Statement = { fg = p.gray },
	Storage = { fg = p.gray },
	StorageClass = { fg = p.gray },
	String = { fg = p.yellow },
	Structure = { fg = p.gray },
	Substitute = { fg = p.gray },
	Tag = { fg = p.gray },
	Title = { fg = p.gray },
	Type = { fg = p.gray },
	Typedef = { fg = p.gray },
	Variable = { fg = p.gray },

	Comment = { fg = p.gray },
	SpecialComment = { fg = p.gray },
	Todo = { fg = p.gray },
	Delimiter = { fg = p.gray },
	Identifier = { fg = p.gray },
	Ignore = { fg = p.gray },
	Underlined = { underline = true },
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
