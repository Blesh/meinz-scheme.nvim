local c = require 'meinz-scheme.colors'

return {
    -- character under the cursor, not working, maybe due to tmux 
    -- or terminal.app?
    -- Cursor = { ctermfg = c.white_01, ctermbg = c.white_01, }, 
    CursorLine = { underline = false },

    -- For some reason directory is responsible for git blame hash and date?
    -- Mostly Quickfix settings for LSP
    Directory = { ctermfg = c.yellow_01, ctermbg = c.black_01 },
    Text = { ctermfg = c.white02 },
    TextError = { ctermfg = c.red_01 },
    TextWarning = { ctermfg = c.yellow_02 },
    TextInformation = { ctermfg = c.blue_01 },
    TextHint = { ctermfg = c.green_01 },
    File = { ctermfg = c.yellow_01 },

    qfLineNr = { ctermfg = c.cyan_01 },


    -- Author of gitblame float
    MoreMsg = { ctermfg = c.yellow_01 },
    LineNr = { ctermfg = c.white_01, ctermbg = c.black_01 },

    -- column to the left of the line numbers for things like git signs
    SignColumn = { ctermbg = c.black_01 },

    -- EndOfBuffer 'squiggles'
    EndOfBuffer = { ctermfg = c.black_01 },

    -- error messages on the command line
    ErrorMsg = { ctermfg = c.red_02 },

    -- column separating vertical splits. Also 'WinSeparator'?
    VertSplit = { ctermfg = c.white_01 },
    HorizontalSplit = { ctermfg = c.white_01 },

    -- Not incremental search highlight?
    -- Substitute = { ctermbg = c.red_01 },
    MatchParen = { ctermfg = c.yellow_01, bold = true },

    ModeMsg = { ctermfg = c.blue_01, bold = true },

    Normal = { ctermfg = c.white_02, ctermbg = c.black_01 },

    -- Normal text in floating windows
    NormalFloat = { ctermfg = c.white_02, ctermbg = c.black_01 },
    -- Boarder of float windows like telescope search
    FloatBorder = { ctermfg = c.white_01, ctermbg = c.black_01 },
    FloatTitle = { ctermfg = c.white_02, ctermbg = c.black_01 },

    -- Popup menu normal items
    Pmenu = { ctermbg = c.black_01, ctermfg = c.white_01 },
    -- Popup menu selected items
    PmenuSel = { ctermbg = c.black_02, ctermfg = c.white_01, bold = true, },
    -- Popup menu scrollbar
    PmenuSbar = { ctermbg = c.black_01 },
    PmenuThumb = { ctermbg = c.black_01, ctermfg = c.black_01 },

    Question = { ctermfg = c.blue_02 },

    IncSearch = { ctermbg = c.black_02, ctermfg = c.white_02 },

    QuickFixLine = { ctermbg = c.black_01 },

    SpecialKey = { ctermfg = c.white_02 },

    Visual = { ctermbg = c.black_02, bold = true },
    VisualNOS = { ctermbg = c.black_02, bold = true },

    WarningMsg = { ctermfg = c.red_01 },

    Whitespace = { ctermfg = c.white_01 },

    -- Need this for nice git diff preview
    Folded = { ctermfg = c.white_02, bold = true, ctermbg = c.black_01 },
    FoldColumn = { ctermfg = c.white_02, bold = true, ctermbg = c.black_01 },

    -- Mainly for the line above the quickfixlist
    StatusLine = { ctermfg = c.white_01, ctermbg = c.black_01, }, -- status line of current window

    -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    StatusLineNC = { ctermfg = c.white_02, ctermbg = c.black_01, },

    -- Spelling
    SpellBad  = { underline = true, ctermfg = c.red_01, ctermbg = c.black_01 },
    SpellCap  = { link = 'SpellBad' },
    SpellRare  = {},
    SpellLocal  = {},
}
