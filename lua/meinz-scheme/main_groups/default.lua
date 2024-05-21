local c = require 'meinz-scheme.colors'

-- see nvim/highlight_group.c for defaul links
return {
    ---- UI ----

    -- Added xxx ctermfg=10 guifg=NvimLightGreen
    -- Changed xxx ctermfg=14 guifg=NvimLightCyan
    -- ColorColumn xxx cterm=reverse guibg=NvimDarkGrey4
    Conceal = { ctermbg = c.black_01, ctermfg = c.white_01 },
    -- CurSearch xxx ctermfg=0 ctermbg=11 guifg=NvimDarkGrey1 guibg=NvimLightYellow
    -- Cursor xxx guifg=bg guibg=fg
    -- Cursor xxx guifg=bg guibg=fg
    -- lCursor        xxx guifg=bg guibg=fg
    -- CursorIM xxx links to Cursor
    -- CursorColumn   xxx guibg=NvimDarkGrey3
    CursorLine = { underline = false },
    -- CursorLineFold xxx links to FoldColumn
    -- CursorLineSign xxx links to SignColumn
    DiffAdd = { ctermbg = c.black_02, ctermfg = c.green_02, bold = true },
    DiffChange = { },
    DiffDelete = { ctermbg = c.black_02, ctermfg = c.red_02, bold = true },
    DiffText  = { ctermbg = c.black_02, ctermfg = c.yellow_02, bold = true},
    -- For some reason directory is responsible for git blame hash and date?
    Directory = { ctermfg = c.yellow_01, ctermbg = c.black_01 },
    -- error messages on the command line
    ErrorMsg = { ctermfg = c.red_02 },
    -- EndOfBuffer 'squiggles'
    EndOfBuffer = { ctermfg = c.black_01 },
    -- FloatShadow    xxx ctermbg=0 guibg=NvimDarkGrey4 blend=80
    -- FloatShadowThrough xxx ctermbg=0 guibg=NvimDarkGrey4 blend=100
    -- FloatFooter xxx links to FloatTitle
    FloatTitle = { ctermfg = c.white_02, ctermbg = c.black_01 },
    -- Boarder of float windows like telescope search
    FloatBorder = { ctermfg = c.white_01, ctermbg = c.black_01 },
    Folded = { ctermfg = c.white_02, bold = true, ctermbg = c.black_01 },
    -- Need this for nice git diff preview
    FoldColumn = { ctermfg = c.white_02, bold = true, ctermbg = c.black_01 },
    IncSearch = { ctermbg = c.black_02, ctermfg = c.white_02 },
    LineNr = { ctermfg = c.white_01, ctermbg = c.black_01 },
    -- LineNrAbove xxx links to LineNr
    -- LineNrBelow xxx links to LineNr
    MatchParen = { ctermfg = c.yellow_01, bold = true },
    ModeMsg = { ctermfg = c.blue_01, bold = true },
    -- Author of gitblame float
    MoreMsg = { ctermfg = c.yellow_01 },
    -- MsgSeparator   xxx links to StatusLine
    -- MsgArea        xxx cleared
    -- NonText xxx guifg=NvimDarkGrey4
    Normal = { ctermfg = c.white_02, ctermbg = c.black_01 },
    -- NormalNC       xxx cleared
    -- Normal text in floating windows
    NormalFloat = { ctermfg = c.white_02, ctermbg = c.black_01 },
    -- Popup menu normal items
    Pmenu = { ctermbg = c.black_01, ctermfg = c.white_01 },
    PmenuSel = { ctermbg = c.black_02, ctermfg = c.white_01, bold = true, },
    PmenuThumb = { ctermbg = c.black_01, ctermfg = c.black_01 },
    -- PmenuExtra     xxx links to Pmenu
    -- Popup menu selected items
    -- PmenuExtraSel  xxx links to PmenuSel
    -- PmenuKind      xxx links to Pmenu
    -- PmenuKindSel   xxx links to PmenuSel
    -- Popup menu scrollbar
    PmenuSbar = { ctermbg = c.black_01 },

    Question = { ctermfg = c.blue_02 },
    QuickFixLine = { ctermbg = c.black_01 },
    -- RedrawDebugClear xxx ctermfg=0 ctermbg=11 guibg=NvimDarkYellow
    -- RedrawDebugComposed xxx ctermfg=0 ctermbg=10 guibg=NvimDarkGreen
    -- RedrawDebugRecompose xxx ctermfg=0 ctermbg=9 guibg=NvimDarkRed
    -- Removed xxx ctermfg=9 guifg=NvimLightRed
    -- Search         xxx ctermfg=0 ctermbg=11 guifg=NvimLightGrey1 guibg=NvimDarkYellow
    -- column to the left of the line numbers for things like git signs
    SignColumn = { ctermbg = c.black_01 },
    SpecialKey = { ctermfg = c.white_02 },

    -- Spelling
    SpellBad  = { underline = true, ctermfg = c.red_01, ctermbg = c.black_01 },
    SpellCap  = { link = 'SpellBad' },
    SpellLocal  = {},
    SpellRare  = {},

    -- Mainly for the line above the quickfixlist
    StatusLine = { ctermfg = c.white_01, ctermbg = c.black_01, }, -- status line of current window
    -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    StatusLineNC = { ctermfg = c.white_02, ctermbg = c.black_01, },
    -- Not incremental search highlight?
    -- Substitute = { ctermbg = c.red_01 },
    -- Title xxx cterm=bold gui=bold guifg=NvimLightGrey2
    -- TabLine xxx links to StatusLineNC
    -- TabLineFill    xxx links to TabLine
    -- TermCursorNC   xxx cleared
    Visual = { ctermbg = c.black_02, bold = true },
    -- column separating vertical splits. Also 'WinSeparator'?
    -- VertSplit = { ctermfg = c.white_01 }, deprecated?
    HorizontalSplit = { ctermfg = c.white_01 },

    VisualNOS = { ctermbg = c.black_02, bold = true },

    WarningMsg = { ctermfg = c.red_01 },
    Whitespace = { ctermfg = c.white_01 },
    -- WinBar         xxx cterm=bold gui=bold guifg=NvimLightGrey4 guibg=NvimDarkGrey1
    -- WinBarNC       xxx cterm=bold guifg=NvimLightGrey4 guibg=NvimDarkGrey1
    WinSeparator = { ctermfg = c.white_01 }, -- links to Normal by default since 0.10
    -- WildMenu       xxx links to PmenuSel

    ------ Not sure where these come from

    -- Mostly Quickfix settings for LSP
    Text = { ctermfg = c.white02 },
    TextError = { ctermfg = c.red_01 },
    TextWarning = { ctermfg = c.yellow_02 },
    TextInformation = { ctermfg = c.blue_01 },
    TextHint = { ctermfg = c.green_01 },
    File = { ctermfg = c.yellow_01 },

    qfLineNr = { ctermfg = c.cyan_01 },


    ---- Syntax ----

    Constant = { ctermfg = c.red_02 }, -- (preferred) any constant
    Character = { ctermfg = c.green_01 }, --  a character constant: 'c', '\n'
    Number = { ctermfg = c.red_02 }, --   a number constant: 234, 0xff
    Boolean = { ctermfg = c.red_02 }, --  a boolean constant: TRUE, false
    Float = { ctermfg = c.red_02 }, --    a floating point constant: 2.3e10
    String = { ctermfg = c.green_01}, --   a string constant: "this is a string"

    Identifier = { ctermfg = c.blue_01 }, -- (preferred) any variable name
    Function = { ctermfg = c.blue_01 },
    Operator = { fg = c.white_01 }, -- "sizeof", "+", "*", etc.

    Error = { ctermfg = c.red_01 },
    Comment = { ctermfg = c.white_01 },
    -- Ignore         xxx links to Normal
    -- Todo = { ctermfg = c.magenta_01, bold = true }, -- keywords TODO FIXME and XXX

    -- Statement
    Statement = { ctermfg =  c.cyan_01 }, -- (preferred) any statement
    Conditional = { ctermfg = c.red_01 }, --  if, then, else, endif, switch, etc.
    Repeat = { ctermfg = c.red_01 }, --   for, do, while, etc.
    Label = { ctermfg = c.red_01 }, --    case, default, etc.
    Keyword = { ctermfg = c.red_01 }, --  any other keyword
    Exception = { ctermfg = c.red_01 }, --  try, catch, throw

    -- PreProc
    PreProc = { link = 'Macro' }, -- (preferred) generic Preprocessor
    Macro = { ctermfg = c.red_02}, --    same as Define
    Include = { link = 'Macro' }, --  preprocessor #include
    Define = { link = 'Macro' }, --   preprocessor #define
    PreCondit = { link = 'Macro' }, --  preprocessor #if, #else, #endif, etc

    -- Type
    Type = { ctermfg = c.yellow_01 }, -- (preferred) int, long, char, etc.
    StorageClass = { link = 'Keyword' }, -- static, register, volatile, etc.
    Structure = { link = 'Type' }, --  struct, union, enum, etc.
    Typedef = { link = 'Type' }, --  A typedef

    -- Special
    Special = { ctermfg = c.red_01 }, -- (preferred) any special symbol
    -- Tag           = { }, --    you can use CTRL-] on this
    -- SpecialChar   = { }, --  special character in a constant
    -- Debug         = { }, --    debugging statements
    SpecialComment = { ctermfg = c.white_02 }, -- special things inside a comment
    Delimiter     = { ctermfg = c.white_02 }, --  character that needs attention

    ---- Diagnostic ----

    DiagnosticError = { ctermfg = c.red_01, ctermbg = c.black_01, term = bold},
    DiagnosticWarn = { ctermfg = c.red_01, ctermbg = c.black_01 },
    DiagnosticInfo = { ctermfg = c.yellow_02, ctermbg = c.black_01 },
    DiagnosticHint = { ctermfg = c.yellow_02, ctermbg = c.black_01 },
    -- DiagnosticOk   xxx ctermfg=10 guifg=NvimLightGreen

    DiagnosticUnderlineError = { underline = true, sp = 1 }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn = { underline = true, sp = c.red_01 }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo = { underline = true, sp = c.yellow_02 }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint = { underline = true, sp = c.yellow_02 }, -- Used to underline "Hint" diagnostics
    -- DiagnosticUnderlineOk xxx cterm=underline gui=underline guisp=NvimLightGreen
    -- DiagnosticDeprecated xxx cterm=strikethrough gui=strikethrough guisp=NvimLightRed

--    DiagnosticVirtualTextError
--        Used for "Error" diagnostic virtual text.
--
--    DiagnosticVirtualTextWarn
--        Used for "Warn" diagnostic virtual text.
--
--    DiagnosticVirtualTextInfo
--        Used for "Info" diagnostic virtual text.
--
--    DiagnosticVirtualTextHint
--        Used for "Hint" diagnostic virtual text.
--
--    DiagnosticVirtualTextOk
--        Used for "Ok" diagnostic virtual text.
--
--    DiagnosticUnderlineError
--        Used to underline "Error" diagnostics.
--
--    DiagnosticUnderlineWarn
--        Used to underline "Warn" diagnostics.
--
--    DiagnosticUnderlineInfo
--        Used to underline "Info" diagnostics.
--
--    DiagnosticUnderlineHint
--        Used to underline "Hint" diagnostics.
--
--    DiagnosticUnderlineOk
--        Used to underline "Ok" diagnostics.
--
--    DiagnosticFloatingError
--        Used to color "Error" diagnostic messages in diagnostics float.
--        See |vim.diagnostic.open_float()|
--
--    DiagnosticFloatingWarn
--        Used to color "Warn" diagnostic messages in diagnostics float.
--
--    DiagnosticFloatingInfo
--        Used to color "Info" diagnostic messages in diagnostics float.
--
--    DiagnosticFloatingHint
--        Used to color "Hint" diagnostic messages in diagnostics float.
--
--    DiagnosticFloatingOk
--        Used to color "Ok" diagnostic messages in diagnostics float.
--
--    DiagnosticSignError
--        Used for "Error" signs in sign column.
--
--    DiagnosticSignWarn
--        Used for "Warn" signs in sign column.
--
--    DiagnosticSignInfo
--        Used for "Info" signs in sign column.
--
--    DiagnosticSignHint
--        Used for "Hint" signs in sign column.
--
--    DiagnosticSignOk
--        Used for "Ok" signs in sign column.
--
--    DiagnosticDeprecated
--        Used for deprecated or obsolete code.
--
--    DiagnosticUnnecessary
--        Used for unnecessary or unused code.

    Underlined = { underline = true }, -- (preferred) text that stands out, HTML links

    --diffAdded = { link = 'DiffAdd'},
    --diffRemoved = { ctermfg = c.red_01 },
    --diffChanged = { ctermfg = c.blue_01 },
    --diffOldFile = { ctermfg = c.magenta_01 },
    --diffNewFile = { ctermfg = c.green_01 },
    --diffFile = { ctermfg = c.white_01 },
    --diffLine = {},
    --diffIndexLinex = {},
}
