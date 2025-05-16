local colors = require 'meinz-scheme.colors'
local c, tc = colors.termc, colors.truec

return {
  -- High Level Treesitter: Grammars for programming languages are written in `grammar.js` files, defining syntax of the language including node types.
  -- The treesitter cli used the grammer to to generate a shared object file containing the parser. At runtime this parser parses our buffer and generates
  -- a syntax tree whose vertices are TSNodes, each having a type, e.g., `function_name`, start and end offset, and children.
  -- Then queries are written to capture the information stored by those trees. Queries are written as S-expressions, which is the syntax used by the Scheme
  -- programming language (a Lisp dialect), which is where the `.scm` file ending comes from.
  -- There are queries written in neovim core as well as third party ones, easily available using `nvim-treesitter`.
  -- The capture names, prefixed with `@`, are directly useable as highlight groups which is what we are doing in this file
  -- https://neovim.io/doc/user/treesitter.html#treesitter-highlight-groups

  -- Example: InspectTree on `// <TODO>` in a `.cpp` file returns

  -- Treesitter
  -- @comment.cpp links to Comment   priority: 100   language: cpp
  -- @spell.cpp links to @spell   priority: 100   language: cpp // @spell capture can be used to indicate that a node should be spell checked
  -- @comment.todo.comment links to Todo   priority: 100   language: comment
  -- @nospell.comment links to @nospell   priority: 100   language: comment // @nospell capture indicates to not spell check

  -- Meaning four queries captured `TODO`, two cpp specific ones `../queries/cpp/highlights.scm` and two for generic comment queries
  -- `../queries/comment/highlight.scm` with default priority 100. Not sure how exactly ties are broken as we have the doc her
  -- https://neovim.io/doc/user/syntax.html#%3Asyn-priority, but `h treesitter-highlight-groups` states
  -- `A fallback system is implemented, so that more specific groups fallback to more generic ones.`
  -- If all fails we can write our own queries with differnt priorities, see `:EditQuery`.

  ['@variable']                     = { ctermfg = c.white_02, fg = tc.white_02 }, -- Identifier for now
  ['@variable.builtin']             = { ctermfg = c.orange, fg = tc.orange },
  ['@variable.parameter']           = { ctermfg = c.white_01, fg = tc.white_01 }, -- For parameters of a function.
  ['@variable.parameter.builtin']   = { link = '@variable.builtin' },
  ['@variable.member']              = { ctermfg = c.cyan, fg = tc.cyan },

  ['@constant']                     = { link = 'Constant' },
  ['@constant.builtin']             = { link = '@variable.builtin' },
  ['@constant.macro']               = { link = 'Constant' },

  ['@module']                       = { ctermfg = c.yellow, fg = tc.yellow },
  ['@module.builtin']               = { ctermfg = c.orange, fg = tc.orange },

  ['@label']                        = { link = 'Label' },

  ['@string']                       = { link = 'String' },
  ['@string.documentation']         = { link = 'Comment' },
  ['@string.regexp']                = { ctermfg = c.magenta, fg = tc.magenta },
  ['@string.escape']                = { ctermfg = c.magenta, fg = tc.magenta },
  ['@string.special']               = { ctermfg = c.cyan, fg = tc.cyan },
  ['@string.special.symbol']        = { link = '@string.special' },
  ['@string.special.path']          = { link = '@string.special' },
  ['@string.special.url']           = { link = '@string.special' },

  ['@character']                    = { link = 'Character'},
  ['@character.special']            = { link = '@string.special' },

  ['@boolean']                      = { link = 'Constant' },
  ['@number']                       = { link = 'Constant' },
  ['@number.float']                 = { link = 'Constant' },

  ['@type']                         = { link = 'Type' },
  ['@type.builtin']                 = { link = 'Type' },
  ['@type.definition']              = { link = 'Type' },

  ['@attribute']                    = { ctermfg = c.cyan, fg = tc.cyan },
  ['@attribute.builtin']            = { link = '@module.builtin' },
  ['@property']                     = { link = '@attribute' },

  ['@function']                     = { link = 'Function' },
  ['@function.builtin']             = { ctermfg = c.orange, fg = tc.orange },
  ['@function.call']                = { ctermfg = c.magenta, fg = tc.magenta },
  ['@function.macro']               = { link = 'Macro' },

  ['@function.method']              = { ctermfg = c.cyan, fg = tc.cyan },
  ['@function.method.call']         = { ctermfg = c.cyan, fg = tc.cyan },


  ['@constructor']                  = { link = 'Type' },
  ['@operator']                     = { link = 'Operator' },

  ['@keyword']                      = { link = 'Keyword' },
  ['@keyword.coroutine']            = { ctermfg = c.cyan, fg = tc.cyan, bold = true },
  ['@keyword.function']             = { link = 'Keyword' },
  ['@keyword.operator']             = { link = 'Keyword' },
  ['@keyword.import']               = { link = 'Keyword' },
  ['@keyword.type']                 = { link = 'Type' },
  ['@keyword.modifiers']            = { ctermfg = c.cyan, fg = tc.cyan },

  ['@keyword.repeat']               = { link = 'Repeat' },
  ['@keyword.return']               = { link = 'Keyword' },
  ['@keyword.debug']                = { link = 'Debug' },
  ['@keyword.exception']            = { link = 'Exception' },
  ['@keyword.conditional']          = { link = 'Conditional' },
  ['@keyword.conditional.ternary']  = { link = 'Conditional' },

  ['@keyword.directive']            = { link = 'Macro' },
  ['@keyword.directive.define']     = { link = 'Macro' },

  ['@punctuation']                  = { ctermfg = c.white_01, fg = tc.white_01 },
  ['@punctuation.bracket']          = { link = '@punctuation' },
  ['@punctuation.delimiter']        = { link = '@punctuation' },
  ['@punctuation.special']          = { link = '@punctuation' },

  ['@comment']                      = { link = 'Comment' },
  ['@comment.documentation']        = { link = 'Comment' },
  ['@comment.error']                = { ctermfg = c.red, fg = tc.red, ctermbg = c.black_01, bg = tc.black_01, bold = true },
  ['@comment.warning']              = { ctermfg = c.orange, fg = tc.orange, ctermbg = c.black_01, bg = tc.black_01, bold = true },
  ['@comment.note']                 = { ctermfg = c.white_02, fg = tc.white_02, ctermbg = c.black_01, bg = tc.black_01, bold = true },
  ['@comment.todo']                 = { link = '@comment.note' },

  -- Text
  ['@markup']                       = { link = 'Normal' }, -- For strings considered markup in a markup language.
  ['@markup.strong']                = { bold = true },
  ['@markup.italic']                = { italic = true },
  ['@markup.strikethrough']         = { strikethrough = true },
  ['@markup.underline']             = { underline = true },

  ['@markup.heading']               = { ctermfg = c.white_02, fg = tc.white_02, bold = true },
  ['@markup.heading.1']             = { link = '@markup.heading' },
  ['@markup.heading.2']             = { link = '@markup.heading' },
  ['@markup.heading.3']             = { link = '@markup.heading' },
  ['@markup.heading.4']             = { link = '@markup.heading' },

  ['@markup.quote']                 = { link = '@markup.italic' },
  ['@markup.math']                  = { ctermfg = c.yellow, fg = tc.yellow },

  ['@markup.link']                  = { ctermfg = c.blue, fg = tc.blue },
  ['@markup.link.url']              = { ctermfg = c.blue, fg = tc.blue, underline = true }, -- Any URI like a link or email.
  ['@markup.link.label']            = { ctermfg = c.red, fg = tc.red }, -- Any URI like a link or email.

  ['@markup.raw']                   = { ctermfg = c.blue, fg = tc.blue },
  ['@markup.raw.block']             = { link = '@markup.raw' },

  ['@markup.list']                  = { link = 'Type' },
  ['@markup.list.checked']          = { link = 'Type' },
  ['@markup.list.unchecked']        = { link = 'Type' },

  ['@markup.todo']                  = { link = 'Todo' },

  ['@markup.note']                  = { ctermfg = c.magenta, fg = tc.magenta },
  ['@markup.emphasis']              = { italic = true }, -- For markup to be represented with emphasis.
  ['@markup.strike']                = { strikethrough = true }, -- For strikethrough markup.

  -- Miscs
  ['@diff.plus']                    = { link = 'Added' },
  ['@diff.minus']                   = { link = 'Removed' },
  ['@diff.delta']                   = { link = 'Changed' },

  ['@tag']                          = { link = 'Constant' }, -- Tags like html tag names.
  ['@tag.builtin']                  = { link = '@module.builtin' }, -- Tags like html tag names.
  ['@tag.attribute']                = { link = '@attribute' }, -- Tags like html tag names.
  ['@tag.delimiter']                = { link = '@delimiter' }, -- Tags like html tag names.



  -- These are not part of the documentation, not sure whether they are used?
  -- ['@macro']                      = { link = 'Macro' },
  -- ['@namespace']                  = { ctermfg = c.yellow, fg = tc.yellow },
  -- ['@class']                      = { link = 'Type' },
  -- ['@type.qualifier']             = { link = 'Keyword' },
  -- ['@none']                       = { link = 'None' },
}
