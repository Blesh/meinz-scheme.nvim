local c = require 'meinz-scheme.colors'

return {
    -- Constants
    Constant = { ctermfg = c.red_02 }, -- (preferred) any constant
    String = { ctermfg = c.green_01}, --   a string constant: "this is a string"
    Character = { ctermfg = c.green_01 }, --  a character constant: 'c', '\n'
    Number = { ctermfg = c.red_02 }, --   a number constant: 234, 0xff
    Boolean = { ctermfg = c.red_02 }, --  a boolean constant: TRUE, false
    Float = { ctermfg = c.red_02 }, --    a floating point constant: 2.3e10

    Identifier = { ctermfg = c.blue_01 }, -- (preferred) any variable name
    Function = { ctermfg = c.blue_01 },


    -- Statement
    -- Statement = { ctermfg =  c.yellow_02 }, -- (preferred) any statement
    Statement = { ctermfg =  c.cyan_01 }, -- (preferred) any statement
    Conditional = { ctermfg = c.red_01 }, --  if, then, else, endif, switch, etc.
    Repeat = { ctermfg = c.red_01 }, --   for, do, while, etc.
    Label = { ctermfg = c.red_01 }, --    case, default, etc.
    Operator = { fg = c.white_01 }, -- "sizeof", "+", "*", etc.
    Keyword = { ctermfg = c.red_01 }, --  any other keyword
    Exception = { ctermfg = c.red_01 }, --  try, catch, throw

    -- PreProc
    Macro = { ctermfg = c.red_02}, --    same as Define
    PreProc = { link = 'Macro' }, -- (preferred) generic Preprocessor
    Include = { link = 'Macro' }, --  preprocessor #include
    Define = { link = 'Macro' }, --   preprocessor #define
    PreCondit = { link = 'Macro' }, --  preprocessor #if, #else, #endif, etc

    -- Type
    Type = { ctermfg = c.yellow_01 }, -- (preferred) int, long, char, etc.
    Structure = { link = 'Type' }, --  struct, union, enum, etc.
    Typedef = { link = 'Type' }, --  A typedef
    StorageClass = { link = 'Keyword' }, -- static, register, volatile, etc.


    -- Special
    -- SpecialChar   = { }, --  special character in a constant
    -- Tag           = { }, --    you can use CTRL-] on this
    -- Debug         = { }, --    debugging statements
    Delimiter     = { ctermfg = c.white_02 }, --  character that needs attention
    SpecialComment = { ctermfg = c.white_02 }, -- special things inside a comment
    Special = { ctermfg = c.red_01 }, -- (preferred) any special symbol
    Underlined = { underline = true }, -- (preferred) text that stands out, HTML links

    Todo = { ctermfg = c.magenta_01, bold = true },
    Error = { ctermfg = c.red_01 },
    Comment = { ctermfg = c.white_01 },

    -- Spelling
}
