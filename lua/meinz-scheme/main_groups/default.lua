local colors = require 'meinz-scheme.colors'
local c, tc = colors.termc, colors.truec

-- see /runtime/colors for og vim themes
-- see `highlight_group.c` for neovim default themes
-- https://neovim.io/doc/user/syntax.html#highlight-default
-- https://neovim.io/doc/user/syntax.html#group-name
return {

  ---- UI ----

  Colorcolumn               = { ctermbg = c.black_02, bg = tc.black_02 },
  Conceal                   = { ctermbg = c.black_02, bg = tc.black_02 },
  CurSearch                 = { ctermfg = c.red, fg = tc.red, ctermbg = c.black_02, bg = tc.black_02, bold = true },
  -- NOTE Not used, see `guicursor` config
  -- Cursor                    = { ctermfg = c.red, fg = tc.red, ctermbg = c.magenta, bg = tc.magenta },
  CursorColumn              = { ctermbg = c.black_01, bg = tc.black_01 },
  CursorLine                = { underline = false },
  Directory                 = { ctermfg = c.yellow, fg = tc.yellow, ctermbg = c.black_01, bg = tc.black_01 },
  DiffAdd                   = { ctermfg = c.green, fg = tc.green, ctermbg = c.black_02, bg = tc.black_02, bold = true },
  DiffChange                = { ctermfg = c.white_02, fg = tc.white_02, ctermbg = c.black_02, bg = tc.black_02, bold = true },
  DiffDelete                = { ctermfg = c.red, fg = tc.red, ctermbg = c.black_02, bg = tc.black_02, bold = true },
  DiffText                  = { ctermfg = c.orange, fg = tc.orange, ctermbg = c.black_02, bg = tc.black_02, bold = true },
  DiffTextAdded             = { ctermfg = c.green, fg = tc.green, ctermbg = c.black_02, bg = tc.black_02, bold = true },
  EndOfBuffer               = { ctermfg = c.black_01, fg = tc.black_01 },
  -- TermCursor, dont think this is used with same reason as `Cursor`
  ErrorMsg                  = { ctermfg = c.red, fg = tc.red },
  StderrMsg                 = { ctermfg = c.red, fg = tc.red },
  StdoutMsg                 = { ctermfg = c.white_02, fg = tc.white_02, ctermbg = c.black_01, bg = tc.black_01 },
  Folded                    = { ctermfg = c.white_01, fg = tc.white_01, ctermbg = c.black_02, bg = tc.black_02, bold = true },
  -- FoldColumn, unused
  SignColumn                = { ctermbg = c.black_01, bg = tc.black_01 },
  IncSearch                 = { ctermfg = c.red, fg = tc.red, ctermbg = c.black_02, bg = tc.black_02, bold = true },
  Substitute                = { link = 'IncSearch' },
  LineNr                    = { ctermfg = c.white_01, ctermbg = c.black_01, fg = tc.white_01, bg = tc.black_01 },
  LineNrAbove               = { link = 'LineNr' },
  LineNrBelow               = { link = 'LineNr' },
  -- The following are only useful when `cursorline` is set
  -- CursorLineNr
  -- CursorLineFold
  -- CursorLineSign
  MatchParen                = { ctermfg = c.yellow, fg = tc.yellow, bold = true },
  ModeMsg                   = { ctermfg = c.white_01, fg = tc.white_01, bold = true },
  -- MsgArea, not sure what this is
  MsgSeparator              = { ctermfg = c.white_01, fg = tc.white_01, ctermbg = c.black_01, bg = tc.black_01 },
  MoreMsg                   = { ctermfg = c.white_02, fg = tc.white_02, ctermbg = c.black_01, bg = tc.black_01, bold = true },
  NonText                   = { ctermfg = c.white_01, fg = tc.white_01 },
  Normal                    = { ctermfg = c.white_02, fg = tc.white_02, ctermbg = c.black_01, bg = tc.black_01 },
  NormalFloat               = { link = 'Normal' },
  FloatBorder               = { ctermfg = c.white_01, fg = tc.white_01, ctermbg = c.black_01, bg = tc.black_01 },
  FloatTitle                = { link = 'Normal' },
  FloatFooter               = { link = 'Normal' },
  Pmenu                     = { ctermfg = c.white_02, fg = tc.white_02, ctermbg = c.black_01, bg = tc.black_01 },
  PmenuSel                  = { ctermfg = c.white_02, fg = tc.white_02, ctermbg = c.black_02, bg = tc.black_02, bold = true },
  PmenuKind                 = { ctermfg = c.yellow, fg = tc.yellow, ctermbg = c.black_01, bg = tc.black_01 },
  PmenuKindSel              = { ctermfg = c.yellow, fg = tc.yellow, ctermbg = c.black_02, bg = tc.black_02, bold = true },
  PmenuExtra                = { link = 'Normal' },
  PmenuExtraSel             = { link = 'Normal' },
  PmenuSbar                 = { ctermbg = c.black_01, bg = tc.black_01 },
  -- TODO Not highlighting as I would expect?
  PmenuThumb                = { ctermfg = c.black_01, fg = tc.black_01, ctermbg = c.black_01, bg = tc.black_01 },
  PmenuMatch                = { ctermfg = c.red, fg = tc.red, ctermbg = c.black_02, bg = tc.black_02, bold = true },
  PmenuMatchSel             = { link = 'PmenuSel' },
  ComplMatchIns             = { ctermfg = c.red, fg = tc.red, ctermbg = c.black_02, bg = tc.black_02, bold = true },
  Question                  = { link = 'Normal' },
  QuickFixLine              = { ctermbg = c.black_01, bg = tc.black_01 },
  Search                    = { ctermfg = c.red, fg = tc.red, ctermbg = c.black_02, bg = tc.black_02 },
  SpecialKey                = { ctermfg = c.white_02, fg = tc.white_02 },
  -- SnippetTabstop
  SpellBad                  = { ctermfg = c.red, fg = tc.red, undercurl = true },
  SpellCap                  = { ctermfg = c.red, fg = tc.red, undercurl = true },
  SpellLocal                = { ctermfg = c.yellow, fg = tc.yellow, undercurl = true },
  SpellRare                 = { ctermfg = c.yellow, fg = tc.yellow, undercurl = true },

  StatusLine                = { ctermfg = c.white_01, ctermbg = c.black_01, fg = tc.white_01, bg = tc.black_01 }, -- status line of current window
  -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
  StatusLineNC              = { ctermfg = c.white_02, ctermbg = c.black_01, fg = tc.white_02, bg = tc.black_01 },
  StatusLineTerm            = { link = 'StatusLine' },
  StatusLineTermNC          = { link = 'StatusLineNC' },
  -- TabLine, TabLineFill, TabLineSel, not using tabs
  Title                     = { link = 'Normal' },
  Visual                    = { ctermbg = c.black_02, bg = tc.black_02, bold = true },
  VisualNOS                 = { link = 'Visual' },
  WarningMsg                = { ctermfg = c.red, fg = tc.red },
  Whitespace                = { ctermfg = c.white_01, fg = tc.white_01 },
  WildMenu                  = { link = 'PmenuMatch' },

  -- Setting these gives fat and ugly separtors
  -- WinSeparator              = { ctermfg = c.white_01, fg = tc.white_01, ctermbg = c.white_01, bg = tc.white_01 },
  -- WinBar                    = { link = 'WinSeparator' },
  -- WinBarNC                  = { link = 'WinBar' },

  ---- Syntax ----

  Comment                   = { ctermfg = c.white_01, fg = tc.white_01 },
  Constant                  = { ctermfg = c.red, fg = tc.red },
  String                    = { ctermfg = c.green, fg = tc.green },
  Character                 = { ctermfg = c.green, fg = tc.green },
  Number                    = { ctermfg = c.red, fg = tc.red },
  Boolean                   = { ctermfg = c.red, fg = tc.red },
  Float                     = { ctermfg = c.red, fg = tc.red },

  Identifier                = { ctermfg = c.white_02, fg = tc.white_02 },
  Function                  = { ctermfg = c.blue, fg = tc.blue },

  Statement                 = { ctermfg = c.cyan, fg = tc.cyan },
  Conditional               = { ctermfg = c.red, fg = tc.red },
  Repeat                    = { ctermfg = c.red, fg = tc.red },
  Label                     = { ctermfg = c.red, fg = tc.red },
  Operator                  = { ctermfg = c.white_01, fg = tc.white_01 }, -- "sizeof", "+", "*", etc.
  Keyword                   = { ctermfg = c.red, fg = tc.red },
  Exception                 = { ctermfg = c.red, fg = tc.red },

  Macro                     = { ctermfg = c.red, fg = tc.red },
  PreProc                   = { link = 'Macro' },
  Include                   = { link = 'Macro' },
  Define                    = { link = 'Macro' },
  PreCondit                 = { link = 'Macro' },

  Type                      = { ctermfg = c.yellow, fg = tc.yellow }, -- (preferred) int, long, char, etc.
  Structure                 = { link = 'Type' }, --  struct, union, enum, etc.
  Typedef                   = { link = 'Type' }, --  A typedef
  StorageClass              = { link = 'Type' }, -- static, register, volatile, etc.

  Special                   = { ctermfg = c.magenta }, -- (preferred) any special symbol
  SpecialChar               = { link = 'Special' }, -- (preferred) any special symbol
  Tag                       = { ctermfg = c.magenta, fg = tc.magenta, bold = true }, -- ???
  Delimiter                 = { ctermfg = c.white_01, fg = tc.white_01 },
  SpecialComment            = { ctermfg = c.white_02, fg = tc.white_02, bold = true }, -- ???
  Debug                     = { ctermfg = c.red, fg = tc.red, bold = true }, -- ???

  Underlined                = { ctermfg = c.cyan, fg = tc.cyan, underline = true }, -- ???
  Error                     = { ctermfg = c.red, fg = tc.red },
  Todo                      = { ctermfg = c.white_02, fg = tc.white_01, bold = true },

  Added                     = { ctermfg = c.green, fg = tc.green, ctermbg = c.black_02, bg = tc.black_02, bold = true },
  Changed                   = { ctermfg = c.orange, fg = tc.orange, ctermbg = c.black_02, bg = tc.black_02, bold = true },
  Removed                   = { ctermfg = c.red, fg = tc.red, ctermbg = c.black_02, bg = tc.black_02, bold = true },

  ---- Diagnostic ----

  DiagnosticError           = { ctermfg = c.red, ctermbg = c.black_01, fg = tc.red, bg = tc.black_01, bold = true},
  DiagnosticWarn            = { ctermfg = c.orange, ctermbg = c.black_01, fg = tc.orange, bg = tc.black_01, bold = true },
  DiagnosticInfo            = { ctermfg = c.yellow, ctermbg = c.black_01, fg = tc.yellow, bg = tc.black_01, bold = true },
  DiagnosticHint            = { ctermfg = c.cyan, ctermbg = c.black_01, fg = tc.cyan, bg = tc.black_01, bold = true },

  DiagnosticUnderlineError  = { underline = true, sp = tc.red }, -- Used to underline "Error" diagnostics
  DiagnosticUnderlineWarn   = { underline = true, sp = tc.orange }, -- Used to underline "Warning" diagnostics
  DiagnosticUnderlineInfo   = { underline = true, sp = tc.yellow }, -- Used to underline "Information" diagnostics
  DiagnosticUnderlineHint   = { underline = true, sp = tc.cyan }, -- Used to underline "Hint" diagnostics

  -- Not sure where these come from, or whether they ever did something
  -- VertSplit                 = { ctermfg = c.white_01, fg = c.white_01 },
  -- HorizontalSplit           = { ctermfg = c.white_02, fg = tc.white_02 },
  -- Text                      = { ctermfg = c.white02, fg = tc.white_02 },
  -- TextError                 = { ctermfg = c.red, fg = tc.red },
  -- TextWarning               = { ctermfg = c.orange, fg = tc.orange },
  -- TextInformation           = { ctermfg = c.blue, fg = tc.blue },
  -- TextHint                  = { ctermfg = c.green, fg = tc.green },
  -- File                      = { ctermfg = c.yellow, fg = tc.yellow },
  -- qfLineNr                  = { ctermfg = c.cyan, fg = tc.cyan },
}
