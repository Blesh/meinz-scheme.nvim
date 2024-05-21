local c = require 'meinz-scheme.colors'

return {
    -- capture names prefixed with @ are directly usable as highlight groups
    -- Text
    ['@markup'] = { link = 'Normal' }, -- For strings considered markup in a markup language.
    ['@markup.raw'] = { link = 'String' },
    ['@markup.link'] = { ctermfg = c.blue_01 },
    ['@markup.heading'] = { link = 'Title' }, -- markup that is part of a title.
    ['@markup.link.url'] = { underline = true, ctermfg = c.blue_01 }, -- Any URI like a link or email.
    ['@markup.underline'] = { underline = true }, -- For markup to be represented with an underline.
    ['@markup.todo'] = { link = 'Todo' },

    ['@markup.note'] = { ctermfg = c.magenta_01 },
    ['@markup.strong'] = { bold = true },
    ['@markup.emphasis'] = { italic = true }, -- For markup to be represented with emphasis.
    ['@markup.strike'] = { strikethrough = true }, -- For strikethrough markup.

    -- Miscs
    ['@comment'] = { link = 'Comment' },
    ['@punctuation'] = { link = 'Comment' },

    -- Constants
    ['@constant'] = { link = 'Constant' },
    ['@constant.builtin'] = { link = 'Constant' },
    ['@constant.macro'] = { link = 'Constant' },
    ['@keyword.directive.define'] = { link = 'Macro' },
    ['@macro'] = { link = 'Macro' },
    ['@string'] = { link = 'String' }, -- For escape characters within a string.
    ['@string.escape'] = { fg = c.magenta_01 }, -- For escape characters within a string.
    ['@markup.link.label'] = { fg = c.magenta_01 }, -- For escape characters within a string.
    ['@character'] = { link = 'Character'},
    ['@character.special'] = { link = 'SpecialChar' },
    ['@number'] = { link = 'Constant' },
    ['@boolean'] = { link = 'Constant' },
    ['@number.float'] = { link = 'Constant' },

    -- Functions
    ['@function'] = { link = 'Function' },
    ['@function.macro'] = { link = 'Macro' },
    -- should also be different color I think
    ['@function.builtin'] = { ctermfg = c.yellow_02 },
    ['@variable.parameter'] = { ctermfg = c.white_02 }, -- For parameters of a function.
    ['@function.method'] = { ctermfg = c.cyan_01 },
    ['@variable.member'] = { ctermfg = c.cyan_01 },
    ['@property'] = { ctermfg = c.cyan_01 },
    -- maybe 'function' or maybe having different color like type is better
    -- actually can also be somewhat reasonable since constructores are constructing 'types'
    ['@constructor'] = { link = 'Type' },


    -- Keywords
    ['@keyword.conditional'] = { ctermfg = c.red_01 },
    ['@keyword.repeat'] = { ctermfg = c.red_01 },
    ['@label'] = { fg = c.blue_01 }, -- For labels: `label:` in C and `:label:` in Lua.
    ['@operator'] = { link = 'Operator' },
    ['@keyword'] = { link = 'Keyword' },
    ['@keyword.exception'] = { link = 'Macro' },
    ['@variable'] = { link = 'Identifier' }, -- Identifier for now
    ['@type'] = { link = 'Type' },
    ['@type.definition'] = { link = 'Type' },
    ['@keyword.storage'] = { link = 'Keyword' },
    ['@namespace'] = { ctermfg = c.yellow_01 },
    ['@keyword.import'] = { link = 'Macro' },
    ['@keyword.directive'] = { link = 'Macro' },
    ['@keyword.debug'] = { link = 'Debug' },
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
    ['@function.method.call'] = { ctermfg = c.cyan_01 },
    -- ['@function.call'] = { link = 'Function' },
    ['@function.call'] = { ctermfg = c.magenta_01 },
    ['@variable.builtin'] = { ctermfg = c.yellow_02 },
    ['@punctuation.delimiter'] = { ctermfg = c.white_02 }, -- For delimiters ie: `.`
    ['@punctuation.bracket'] = { ctermfg = c.white_02 }, -- For brackets and parens.
    ['@string.regexp'] = { fg = c.green_01 }, -- For regexes.
    ['@markup.list'] = { link = 'Type' },
    ['@type.qualifier'] = { link = 'Keyword' },
    ['@none'] = { link = 'None' },

}
