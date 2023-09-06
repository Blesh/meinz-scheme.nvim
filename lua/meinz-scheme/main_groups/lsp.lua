local c = require 'meinz-scheme.colors'

return {

    -- Inspect to show the highlight groups under the cursor
    -- InspectTree to show the parsed syntax tree
    -- PreviewQuery to open the Query Editor

    DiagnosticError = { ctermfg = c.red_01, ctermbg = c.black_01, term = bold},
    DiagnosticWarn = { ctermfg = c.red_01, ctermbg = c.black_01 },
    DiagnosticInfo = { ctermfg = c.yellow_02, ctermbg = c.black_01 },
    DiagnosticHint = { ctermfg = c.yellow_02, ctermbg = c.black_01 },

    DiagnosticUnderlineError = { underline = true, sp = 1 }, -- Used to underline "Error" diagnostics
    DiagnosticUnderlineWarn = { underline = true, sp = c.red_01 }, -- Used to underline "Warning" diagnostics
    DiagnosticUnderlineInfo = { underline = true, sp = c.yellow_02 }, -- Used to underline "Information" diagnostics
    DiagnosticUnderlineHint = { underline = true, sp = c.yellow_02 }, -- Used to underline "Hint" diagnostics

    LspInfoBorder = { ctermfg = c.black_02, bg = c.black_01 },

    -- @lsp.type.<type>.<ft> highlight for each token
    -- @lsp.mod.<mod>.<ft> highlight for each modifier of each token
    -- @lsp.typemod.<type>.<mod>.<ft> highlights for each modifier of each token

    -- LSP semantic tokens default groups 

    ["@lsp.type.class"] = { link = '@class' },
    ['@lsp.type.comment'] = { link = '@comment' },
    ['@lsp.type.decorator'] = { ctermfg = c.magenta_01 },
    ['@lsp.type.enum'] = { link = 'Type' },
    ["@lsp.type.enumMember"] = { ctermfg = c.cyan_01 },
    ['@lsp.type.interface'] = { link = 'Type' },
    ["@lsp.type.macro"] = { link = '@macro' },
    ["@lsp.type.function"] = { link = '@function.call' },
    ['@lsp.type.namespace'] = { link = '@namespace' },
    ['@lsp.type.parameter'] = { link = '@parameter' },
    ['@lsp.type.property'] = { link = '@property' },
    ["@lsp.type.struct"] = { link = '@type' },
    ["@lsp.type.typeParameter"] = { link = '@type' },
    ["@lsp.type.variable"] = { link = 'Identifier' },


    -- These are not defined by neovim but assume are used by most language servers?
    ["@lsp.type.event"] = { link = '@property' },
    ['@lsp.type.keyword'] = { link = '@keyword' },
    ["@lsp.type.method"] = { link = '@method' },
    ["@lsp.type.modifier"] = { link = '@operator' },
    ["@lsp.type.number"] = { link = '@number' },
    ["@lsp.type.operator"] = { link = '@operator' },
    ["@lsp.type.regexp"] = { link = 'String' },
    ["@lsp.type.string"] = { link = 'String' },
    ["@lsp.type.type"] = { link = '@type' },

    ["@lsp.mod.abstract"] = { link = 'Type' },
    ["@lsp.mod.async"] = { ctermfg = c.blue_02 },
    ["@lsp.mod.declaration"] = { link = '@variable' },
    ["@lsp.mod.defaultLibrary"] = { link = '@namespace' },
    -- ["@lsp.mod.definition"] = {},
    ["@lsp.mod.deprecated"] = { ctermfg = c.red_02 },
    ["@lsp.mod.documentation"] = { ctermfg = c.white_02 },
    -- ["@lsp.mod.modification"] = {},
    ["@lsp.mod.readonly"] = { ctermfg = c.red_01 },
    -- ["@lsp.mod.static"] = { ctermfg = c.magenta_01 },

    -- These are more specific and will probably be more specific to each language server
    -- as I could not find some kind of extensive list regularated by the protocol?

    ['@lsp.typemod.function.defaultLibrary'] = { ctermfg = c.yellow_02 },
    ['@lsp.typemod.function.definition'] = { ctermfg = c.blue_01 },
    ['@lsp.typemod.function.declaration'] = { ctermfg = c.blue_01 },
    ['@lsp.typemod.method.defaultLibrary'] = { ctermfg = c.yellow_02 },
    -- ['@lsp.typemod.variable.defaultLibrary'] = { link = '@constant' },
    ['@lsp.typemod.variable.defaultLibrary'] = { ctermfg = c.yellow_02 },
    ['@lsp.typemod.variable.globalScope'] = { link = '@variable' },
    ['@lsp.typemod.parameter.functionScope'] = { link = '@parameter' },
    ['@lsp.typemod.variable.functionScope'] = { link = '@parameter' },
}
