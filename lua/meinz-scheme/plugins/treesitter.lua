local c = require 'meinz-scheme.colors'

return {
    -- Text
    ['@text'] = { link = 'Normal' }, -- For strings considered text in a markup language.
    ['@text.literal'] = { link = 'String' },
    ['@text.reference'] = { ctermfg = c.blue_01 },
    ['@text.title'] = { link = 'Title' }, -- Text that is part of a title.
    ['@text.uri'] = { underline = true, ctermfg = c.blue_01 }, -- Any URI like a link or email.
    ['@text.underline'] = { underline = true }, -- For text to be represented with an underline.
    ['@text.todo'] = { link = 'Todo' },

    ['@text.note'] = { ctermfg = c.magenta_01 },
    ['@text.strong'] = { bold = true },
    ['@text.emphasis'] = { italic = true }, -- For text to be represented with emphasis.
    ['@text.strike'] = { strikethrough = true }, -- For strikethrough text.

    -- Miscs
    ['@comment'] = { link = 'Comment' },
    ['@punctuation'] = { link = 'Comment' },

    -- Constants
    ['@constant'] = { link = 'Constant' },
    ['@constant.builtin'] = { link = 'Constant' },
    ['@constant.macro'] = { link = 'Constant' },
    ['@define'] = { link = 'Macro' },
    ['@macro'] = { link = 'Macro' },
    ['@string'] = { link = 'String' }, -- For escape characters within a string.
    ['@string.escape'] = { fg = c.magenta_01 }, -- For escape characters within a string.
    ['@string.special'] = { fg = c.magenta_01 }, -- For escape characters within a string.
    ['@character'] = { link = 'Character'},
    ['@character.special'] = { link = 'SpecialChar' },
    ['@number'] = { link = 'Constant' },
    ['@boolean'] = { link = 'Constant' },
    ['@float'] = { link = 'Constant' },

    -- Functions
    ['@function'] = { link = 'Function' },
    ['@function.macro'] = { link = 'Macro' },
    -- should also be different color I think
    ['@function.builtin'] = { ctermfg = c.yellow_02 },
    ['@parameter'] = { ctermfg = c.white_02 }, -- For parameters of a function.
    ['@method'] = { ctermfg = c.cyan_01 },
    ['@field'] = { ctermfg = c.cyan_01 },
    ['@property'] = { ctermfg = c.cyan_01 },
    -- maybe 'function' or maybe having different color like type is better
    -- actually can also be somewhat reasonable since constructores are constructing 'types'
    ['@constructor'] = { link = 'Type' },


    -- Keywords
    ['@conditional'] = { ctermfg = c.red_01 },
    ['@repeat'] = { ctermfg = c.red_01 },
    ['@label'] = { fg = c.blue_01 }, -- For labels: `label:` in C and `:label:` in Lua.
    ['@operator'] = { link = 'Operator' },
    ['@keyword'] = { link = 'Keyword' },
    ['@exception'] = { link = 'Macro' },
    ['@variable'] = { link = 'Identifier' }, -- Identifier for now
    ['@type'] = { link = 'Type' },
    ['@type.definition'] = { link = 'Type' },
    ['@storageclass'] = { link = 'Keyword' },
    ['@namespace'] = { ctermfg = c.yellow_01 },
    ['@include'] = { link = 'Macro' },
    ['@preproc'] = { link = 'Macro' },
    ['@debug'] = { link = 'Debug' },
    ['@tag'] = { link = 'Constant' }, -- Tags like html tag names.


    -- Not from neovim highlight_group.c but treesitter? Or rather if our language
    -- parser generates these we can use them, there are probably many more
    -- TODO Clean up, also note how this TODO gets turned into white due to semantic 
    -- highlighting of lua comments

    ['@attribute'] = { link = 'Macro' },
    ['@type.builtin'] = { link = 'Type' },
    ['@keyword.return'] = { link = 'Keyword' },
    ['@keyword.function'] = { link = 'Keyword' },
    ['@keyword.export'] = { link = 'Keyword' },
    ['@class'] = { link = 'Type' },
    ['@keyword.operator'] = { link = 'Keyword' },
    -- ['@method.call'] = { link = 'Function' },
    ['@method.call'] = { ctermfg = c.cyan_01 },
    -- ['@function.call'] = { link = 'Function' },
    ['@function.call'] = { ctermfg = c.magenta_01 },
    ['@variable.builtin'] = { ctermfg = c.yellow_02 },
    ['@punctuation.delimiter'] = { ctermfg = c.white_02 }, -- For delimiters ie: `.`
    ['@punctuation.bracket'] = { ctermfg = c.white_02 }, -- For brackets and parens.
    ['@string.regex'] = { fg = c.green_01 }, -- For regexes.
    ['@punctuation.special'] = { link = 'Type' },
    ['@type.qualifier'] = { link = 'Keyword' },
    ['@none'] = { link = 'None' },

}
