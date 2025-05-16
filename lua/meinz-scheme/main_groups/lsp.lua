local colors = require 'meinz-scheme.colors'
local c, tc = colors.termc, colors.truec

return {
  -- The following are very basic highlight groups, see  used to highlight different types of references to whatever token is placed
  -- under our cursor when `vim.lsp.buf.document_highlight()` is used
  -- Links:
  --    https://neovim.io/doc/user/lsp.html#vim.lsp.buf.document_highlight()
  --    https://neovim.io/doc/user/lsp.html#lsp-highlight,
  LspReferenceText                              = { link = 'Visual' }, -- default only for completeness
  LspReferenceRead                              = { link = 'LspReferenceText' }, -- default only for completeness
  LspReferenceWrite                             = { link = 'LspReferenceText' }, -- link = 'LspReferenceText' }, -- default only for completeness
  LspInfoBorder                                 = { ctermfg = c.white_01, ctermbg = c.black_02, fg = tc.white_01, bg = tc.black_02 },
  LspSignatureActiveParameter                   = { ctermfg = c.red, ctermbg = c.black_02, fg = tc.red, bg = tc.black_02 }, -- from ray-x/lsp_signature.nvim

  -- Similar to treesitter highlights derived from captures in queries the highlightgroups in this file come from an external source.
  -- In this case from the Language Server Protocol, in particular the neovim lsp client will request semantic tokens from the lsp server
  -- for the current buffer. These tokens are identified by one token type and n token modifiers and then used to add additional color
  -- information based on langauge specific symbol information.

  -- Note that the filetype suffix '.<ft>' is not neccessary
  -- @lsp.type.<type>.<ft> highlight for each token
  -- @lsp.mod.<mod>.<ft> highlight for each modifier of each token
  -- @lsp.typemod.<type>.<mod>.<ft> highlights for each modifier of each token

  -- Links:
  --    https://neovim.io/doc/user/lsp.html#lsp-semantic-highlight
  --    https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#textDocument_semanticTokens
  --    https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#textDocument_documentHighlight

  -- Modifiers
  --    declaration
  --    definition
  --    readonly
  --    static
  --    deprecated
  --    abstract
  --    async
  --    modification
  --    documentation
  --    defaultLibrary

  -- Token Type 'type'
  -- Token Type 'class'
  -- Token Type 'enum',
  -- Token Type 'interface',
  -- Token Type 'struct',
  -- Token Type 'typeParameter',
  -- Token Type 'parameter',
  -- Token Type 'variable',
  -- Token Type 'property',
  -- Token Type 'enumMember',
  -- Token Type 'event',
  -- Token Type 'function',
  -- Token Type 'method',
  -- Token Type 'macro',
  -- Token Type 'keyword',
  -- Token Type 'modifier',
  -- Token Type 'comment',
  -- Token Type 'string',
  -- Token Type 'number',
  -- Token Type 'regexp',
  -- Token Type 'operator',
  -- Token Type 'decorator'


  -- TODO We comment out all of them for now and add them one by one when we actually need them

  -- Token Type: class --
  ["@lsp.type.class"]                           = { link = 'Type' },

  -- Token Type: property --
  ["@lsp.type.property"]                        = { link = '@attribute' },

  -- Token Type: variable --
  ["@lsp.typemod.variable.readonly"]            = { link = 'Constant' },

  -- Token Type: method --
  ["@lsp.typemod.method.declaration"]           = { link = 'Function' },
  ["@lsp.typemod.method.definition"]            = { link = 'Function' },

  -- ['@lsp.typemod.class.declaration']            = { link = 'Type' },
  --
  -- ['@lsp.typemod.parameter.functionScope.cpp']  = { link = '@variable.parameter' },
  -- ['@lsp.typemod.parameter.declaration.cpp']    = { link = '@variable.parameter' },
  -- ['lsp.typemod.parameter.definition']          = { link = '@variable.parameter' },
  --
  -- ['@lsp.type.comment']                         = { link = '@comment' },
  -- ['@lsp.type.decorator']                       = { ctermfg = c.magenta, fg = tc.magenta },
  --
  -- ['@lsp.type.enum']                            = { link = 'Type' },
  -- ["@lsp.type.enumMember"]                      = { ctermfg = c.cyan, fg = tc.cyan },
  --
  -- ["@lsp.type.event"]                           = { link = '@property' },
  -- ["@lsp.type.function"]                        = { link = '@function.call' },
  -- ['@lsp.type.interface']                       = { link = 'Type' },
  -- ['@lsp.type.keyword']                         = { link = '@keyword' },
  -- ["@lsp.type.macro"]                           = { link = '@macro' },
  -- ["@lsp.type.method"]                          = { link = '@method' },
  -- ["@lsp.type.modifier"]                        = { link = '@operator' },
  -- ['@lsp.type.namespace']                       = { link = '@namespace' },
  -- ["@lsp.type.number"]                          = { link = '@number' },
  -- ["@lsp.type.operator"]                        = { link = '@operator' },
  --
  -- ['@lsp.type.parameter']                       = { ctermfg = c.white_01, fg = tc.white_01 },
  --
  -- ['@lsp.type.property']                        = { link = '@property' },
  -- ["@lsp.type.regexp"]                          = { link = 'String' },
  -- ["@lsp.type.string"]                          = { link = 'String' },
  -- ["@lsp.type.struct"]                          = { link = '@type' },
  -- ["@lsp.type.type"]                            = { link = '@type' },
  -- ["@lsp.type.typeParameter"]                   = { link = '@type' },
  -- ["@lsp.type.variable"]                        = { ctermfg = c.white_02, fg = tc.white_02 },
  --
  --
  -- ["@lsp.mod.abstract"]                         = { link = 'Type' },
  -- ["@lsp.mod.async"]                            = { ctermfg = c.blue, fg = tc.blue },
  -- ["@lsp.mod.declaration"]                      = { link = '@variable' },
  -- ["@lsp.mod.defaultLibrary"]                   = { link = '@namespace' }, -- stl
  -- -- ["@lsp.mod.definition"] = {},
  -- ["@lsp.mod.deprecated"]                       = { ctermfg = c.red, fg = tc.red },
  -- ["@lsp.mod.documentation"]                    = { ctermfg = c.white_02, fg = tc.white_02 },
  -- -- ["@lsp.mod.modification"] = {},
  -- ["@lsp.mod.readonly"]                         = { ctermfg = c.red, fg = tc.red },
  -- -- ["@lsp.mod.static"] = { ctermfg = c.magenta_01 },
  --
  -- -- These are more specific and will probably be more specific to each language server
  -- -- as I could not find some kind of extensive list regularated by the protocol?
  -- ['@lsp.typemod.function.defaultLibrary']      = { ctermfg = c.orange, fg = tc.orange },
  -- ['@lsp.typemod.function.definition']          = { ctermfg = c.blue, fg = tc.blue },
  -- ['@lsp.typemod.function.declaration']         = { ctermfg = c.blue, fg = tc.blue },
  --
  -- ['@lsp.typemod.method.defaultLibrary']        = { ctermfg = c.orange, fg = tc.orange },
  --
  -- -- ['@lsp.typemod.variable.defaultLibrary']   = { link = '@constant' },
  -- ['@lsp.typemod.variable.defaultLibrary']      = { ctermfg = c.orange, fg = tc.orange },
  -- ['@lsp.typemod.variable.globalScope']         = { link = '@variable' },
  -- ['@lsp.typemod.variable.functionScope']       = { link = '@parameter' },
  --
  -- ['@lsp.typemod.parameter.functionScope']      = { link = '@parameter' },
  -- ['@lsp.typemod.method.declaration']           = { link = 'Function' },
  -- ['@lsp.typemod.variable.declaration']         = { ctermfg = c.white_02, fg = tc.white_02 },
  -- ['@lsp.type.selfKeyword']                     = { ctermfg = c.orange, fg = tc.orange },
  -- ['@lsp.typemod.selfKeyword.declaration']      = { ctermfg = c.orange, fg = tc.orange },
  -- ['@lsp.typemod.property.declaration']         = { ctermfg = c.white_02, fg = tc.white_02 },
  -- ['@lsp.typemod.struct.declaration']           = { ctermfg = c.yellow, fg = tc.yellow },
  -- ['@lsp.typemod.typeParameter.declaration']    = { ctermfg = c.yellow, fg = tc.yellow },
  -- ['@lsp.typemod.enum.declaration']             = { ctermfg = c.yellow, fg = tc.yellow },

}

