-- main pallete
local p = {
    dark    = "#151515",
    gray    = "#c1c1c1",
    dgray   = "#686868",
    yellow  = "#fbca60",
    red     = "#cc3333",
}

local common = {

    -- Main colors
	Normal          = { fg = p.gray, bg = p.dark },
	NormalNC        = { fg = p.gray, bg = p.dark },
	SignColumn      = { fg = p.gray },
	FoldColumn      = { fg = p.gray },
	VertSplit       = { fg = p.gray },
	Folded          = { fg = p.gray },
	EndOfBuffer     = { fg = p.gray },
	ColorColumn     = { fg = p.gray },
	Conceal         = { fg = p.gray },
	QuickFixLine    = { fg = p.gray },
	Terminal        = { fg = p.gray },
	IncSearch       = { fg = p.gray },
	Search          = { fg = p.gray },
	Visual          = { fg = p.gray },
	VisualNOS       = { fg = p.gray },
	Cursor          = { fg = p.gray },
	CursorColumn    = { fg = p.gray },
	CursorIM        = { fg = p.gray },
	CursorLine      = { fg = p.gray },
	CursorLineNr    = { fg = p.gray },
	lCursor         = { fg = p.gray },
	LineNr          = { fg = p.gray },
	TermCursor      = { fg = p.gray },
	TermCursorNC    = { fg = p.gray },
	DiffAdd         = { fg = p.gray },
	DiffChange      = { fg = p.gray },
	DiffDelete      = { fg = p.gray },
	DiffText        = { fg = p.gray },
	Directory       = { fg = p.gray },
	ErrorMsg        = { fg = p.gray },
	WarningMsg      = { fg = p.gray },
	ModeMsg         = { fg = p.gray },
	MoreMsg         = { fg = p.gray },
	MsgArea         = { fg = p.gray },
	MsgSeparator    = { fg = p.gray },
	Question        = { fg = p.gray },
	MatchParen      = { fg = p.gray },
	NonText         = { fg = p.gray },
	Whitespace      = { fg = p.gray },
	Pmenu           = { fg = p.gray },
	PmenuSbar       = { fg = p.gray },
	PmenuSel        = { fg = p.gray },
	PmenuThumb      = { fg = p.gray },
	WildMenu        = { fg = p.gray },
	NormalFloat     = { fg = p.gray },
	TabLine         = { fg = p.gray },
	TabLineFill     = { fg = p.gray },
	TabLineSel      = { fg = p.gray },
	StatusLine      = { fg = p.gray },
	StatusLineNC    = { fg = p.gray },
	SpellBad        = { fg = p.gray },
	SpellCap        = { fg = p.gray },
	SpellLocal      = { fg = p.gray },
	SpellRare       = { fg = p.gray },
	Debug           = { fg = p.gray },
	FloatBorder     = { fg = p.gray },
	Storage         = { fg = p.gray },
	Substitute      = { fg = p.gray },
	Variable        = { fg = p.gray },
	Delimiter       = { fg = p.gray },
	Ignore          = { fg = p.gray },
	Underlined      = { underline = true },

    -- syntax
	Boolean         = { fg = p.gray },
	Character       = { fg = p.gray },
	Comment         = { fg = p.dgray },
	Conditional     = { fg = p.gray },
	Constant        = { fg = p.gray },
	Define          = { fg = p.gray },
    Delimiter       = { fg = p.gray },
	Error           = { fg = p.gray },
	Exception       = { fg = p.gray },
	Float           = { fg = p.yellow },
	Function        = { fg = p.dgray },
	Identifier      = { fg = p.gray },
	Include         = { fg = p.gray },
	Keyword         = { fg = p.dgray },
	Label           = { fg = p.gray },
	Macro           = { fg = p.gray },
	Number          = { fg = p.gray },
	Operator        = { fg = p.gray },
	PreCondit       = { fg = p.gray },
	PreProc         = { fg = p.gray },
	Repeat          = { fg = p.gray },
	Special         = { fg = p.gray },
	SpecialChar     = { fg = p.gray },
	SpecialKey      = { fg = p.gray },
	SpecialComment  = { fg = p.gray },
	Statement       = { fg = p.gray },
	StorageClass    = { fg = p.gray },
	String          = { fg = p.yellow },
	Structure       = { fg = p.gray },
	Tag             = { fg = p.gray },
	Title           = { fg = p.gray },
	Todo            = { fg = p.gray },
	Type            = { fg = p.gray },
	Typedef         = { fg = p.gray },
}

local treesitter = {
    ["@attribute"]             = common["Constant"],
    ["@boolean"]               = common["Boolean"],
    ["@character"]             = common["String"],
    ["@character.special"]     = common["SpecialChar"],
    ["@constant"]              = common["Constant"],
    ["@constant.builtin"]      = common["Constant"],
    ["@constant.macro"]        = common["Macro"],
    ["@constructor"]           = { fg = p.gray },
    ["@constructor.lua"]       = { fg = p.gray },
    ["@text.diff.add"]         = { fg = p.gray },
    ["@text.diff.delete"]      = { fg = p.gray },
    ["@diff.plus"]             = { fg = p.gray },
    ["@diff.delta"]            = { fg = p.gray },
    ["@diff.minus"]            = { fg = p.gray },
    ["@function"]              = common["Function"],
    ["@function.builtin"]      = common["Function"],
    ["@function.call"]         = common["Function"],
    ["@function.macro"]        = common["Macro"],
    ["@function.method"]       = common["Function"],
    ["@function.method.call"]  = common["Function"],
    ["@keyword"]               = common["Keyword"]
    ["@keyword.conditional"]   = common["Conditional"]
    ["@keyword.exception"]     = common["Exception"],
    ["@keyword.import"]        = common["PreProc"],
    ["@keyword.operator"]      = common["Keyword"],
    ["@keyword.return"]        = common["Keyword"],
    ["@label"]                 = common["Label"],
    ["@markup"]                = { fg = p.gray },
    ["@markup.heading"]        = { fg = p.gray },
    ["@markup.italic"]         = { fg = p.gray },
    ["@markup.link"]           = { fg = p.gray },
    ["@markup.link.uri"]       = { fg = p.gray },
    ["@markup.list"]           = { fg = p.gray },
    ["@markup.list.checked"]   = { fg = p.gray },
    ["@markup.list.unchecked"] = { fg = p.gray },
    ["@markup.math"]           = { fg = p.gray },
    ["@markup.quote.markdown"] = { fg = p.gray },
    ["@markup.raw"]            = { fg = p.gray },
    ["@markup.strikethrough"]  = { fg = p.gray },
    ["@markup.strong"]         = { fg = p.gray },
    ["@markup.underline"]      = { fg = p.gray },
    ["@module"]                = common["Constant"],
    ["@number"]                = common["Number"],
    ["@number.float"]          = common["Float"],
    ["@operator"]              = common["Operator"],
    ["@property"]              = { fg = p.gray },
    ["@punctuation.bracket"]   = { fg = p.gray },
    ["@punctuation.delimiter"] = { fg = p.gray },
    ["@punctuation.special"]   = common["SpecialChar"],
    ["@string"]                = common["String"],
    ["@string.documentation"]  = common["Comment"],
    ["@string.escape"]         = common["SpecialChar"],
    ["@string.regexp"]         = common["SpecialChar"],
    ["@string.special.symbol"] = common["Identifier"],
    ["@string.special.url"]    = { fg = p.gray },
    ["@tag.attribute"]         = common["Identifier"],
    ["@tag.delimiter"]         = { fg = p.gray },
    ["@type"]                  = common["Type"],
    ["@type.builtin"]          = { fg = p.gray },
    ["@type.declaration"]      = { fg = p.gray },
    ["@type.definition"]       = common["Typedef"],
    ["@variable"]              = { fg = p.gray },
    ["@variable.builtin"]      = { fg = p.gray },
    ["@variable.member"]       = { fg = p.gray },
    ["@variable.parameter"]    = { fg = p.gray },
}

local lsp = {
    ["@lsp.type.builtinConstant"]            = treesitter["@constant.builtin"],
    ["@lsp.type.builtinType"]                = treesitter["@type.builtin"],
    ["@lsp.type.class"]                      = common["Structure"],
    ["@lsp.type.comment"]                    = common["Comment"],
    ["@lsp.type.enum"]                       = common["Structure"],
    ["@lsp.type.enumMember"]                 = treesitter["@variable.member"],
    ["@lsp.type.function"]                   = treesitter["@function.call"],
    ["@lsp.type.generic"]                    = treesitter["@type"],
    ["@lsp.type.interface"]                  = common["Structure"],
    ["@lsp.type.macro"]                      = common["Macro"],
    ["@lsp.type.method"]                     = treesitter["@function.method"],
    ["@lsp.type.namespace"]                  = treesitter["@module"],
    ["@lsp.type.parameter"]                  = treesitter["@variable.parameter"],
    ["@lsp.type.property"]                   = treesitter["@type"],
    ["@lsp.type.selfParameter"]              = common["Special"],
    ["@lsp.type.typeParameter"]              = common["Typedef"],
    ["@lsp.type.variable"]                   = treesitter["@constant"],
    ["@lsp.typemod.function"]                = treesitter["@function.call"],
    ["@lsp.typemod.function.builtin"]        = treesitter["@function.builtin"],
    ["@lsp.typemod.function.defaultLibrary"] = treesitter["@function.builtin"],
    ["@lsp.typemod.function.definition"]     = treesitter["@function"],
    ["@lsp.typemod.variable.defaultLibrary"] = treesitter["@constant.builtin"],
    ["@lsp.typemod.variable.definition"]     = treesitter["@property"],
}

local cmp = {
    CmpGhostText          = { fg = p.gray },
    CmpItemAbbr           = { fg = p.gray },
    CmpItemAbbrDeprecated = { fg = p.gray },
    CmpItemAbbrMatch      = { fg = p.gray },
    CmpItemAbbrMatchFuzzy = { fg = p.gray },
    CmpItemMenu           = common["Pmenu"],
    CmpKind               = { fg = p.gray },
}

local lualine = {
    visual = {
        a = { fg = p.gray, bg = p.dgray },
        b = { fg = p.gray, bg = p.dgray },
    },
    replace = {
        a = { fg = p.gray, bg = p.dgray },
        b = { fg = p.gray, bg = p.dgray },
    },
    inactive = {
        a = { fg = p.gray, bg = p.dgray },
        b = { fg = p.gray, bg = p.dgray },
        c = { fg = p.gray, bg = p.dgray },
    },
    normal = {
        a = { fg = p.gray, bg = p.dgray },
        b = { fg = p.gray, bg = p.dgray },
        c = { fg = p.gray, bg = p.dgray },
    },
    insert = {
        a = { fg = p.gray, bg = p.dgray },
        b = { fg = p.gray, bg = p.dgray },
    },
}

local neotest = {
    NeotestTest             = { fg = p.gray },
    NeotestUnknown          = { fg = p.gray },
    NeotestDir              = { fg = p.gray },
    NeotestFile             = { fg = p.gray },
    NeotestPassed           = { fg = p.gray },
    NeotestFailed           = { fg = p.gray },
    NeotestMarked           = { fg = p.gray },
    NeotestWatching         = { fg = p.gray },
    NeotestTarget           = { fg = p.gray },
    NeotestFocused          = { fg = p.gray },
    NeotestRunning          = { fg = p.gray },
    NeotestAdapterName      = { fg = p.gray },
    NeotestNamespace        = { fg = p.gray },
    NeotestSkipped          = { fg = p.gray },
    NeotestIndent           = { fg = p.gray },
}

local telescope = {
    TelescopeBorder           = { fg = p.gray },
    TelescopeMatching         = { fg = p.gray },
    TelescopePromptPrefix     = { fg = p.gray },
    TelescopeSelection        = { fg = p.yellow },
    TelescopeSelectionCaret   = { fg = p.red },
    TelescopeResultsNormal    = { fg = p.gray },
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
    for group, table in pairs(common) do
        link(group, table)
    end

    for group, table in pairs(cmp) do
        link(group, table)
    end 

    for group, table in pairs(lsp) do
        link(group, table)
    end 

    for group, table in pairs(lualine) do
        link(group, table)
    end 

    for group, table in pairs(neotest) do
        link(group, table)
    end 

    for group, table in pairs(telescope) do
        link(group, table)
    end 

    for group, table in pairs(treesitter) do
        link(group, table)
    end 
end

return M
