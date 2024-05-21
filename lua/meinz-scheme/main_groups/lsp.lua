local c = require 'meinz-scheme.colors'

return {
    -- LspInfoTip     xxx links to Comment
    LspInfoBorder = { ctermfg = c.black_02, bg = c.black_01 },
    -- LspCodeLens    xxx links to NonText
    -- LspCodeLensSeparator xxx links to LspCodeLens
    -- LspInfoList    xxx links to Function
    -- LspInfoTitle   xxx links to Title
    -- LspInlayHint   xxx links to NonText
    -- LspInfoFiletype xxx links to Type
    -- LspReferenceRead xxx links to LspReferenceText
    -- LspReferenceText xxx links to Visual
    -- LspReferenceWrite xxx links to LspReferenceText
    -- LspSignature.nvim higlight
    LspSignatureActiveParameter = { ctermbg = c.black_01, ctermfg = c.green_02 },
    -- SnippetTabstop xxx links to Visual

    -- LSP semantic tokens are represented using one token type combined with n
    -- token modifier, e.g, a type could be 'function' and a modifier 'async'


    -- Note that the filetype suffix '.<ft>' is not neccessary
    -- @lsp.type.<type>.<ft> highlight for each token
    -- @lsp.mod.<mod>.<ft> highlight for each modifier of each token
    -- @lsp.typemod.<type>.<mod>.<ft> highlights for each modifier of each token

    ["@lsp.type.class"] = { link = '@class' },
    ['@lsp.type.comment'] = { link = '@comment' },
    ['@lsp.type.decorator'] = { ctermfg = c.magenta_01 },
    ['@lsp.type.enum'] = { link = 'Type' },
    ["@lsp.type.enumMember"] = { ctermfg = c.cyan_01 },
    ["@lsp.type.event"] = { link = '@property' },
    ["@lsp.type.function"] = { link = '@function.call' },
    ['@lsp.type.interface'] = { link = 'Type' },
    ['@lsp.type.keyword'] = { link = '@keyword' },
    ["@lsp.type.macro"] = { link = '@macro' },
    ["@lsp.type.method"] = { link = '@method' },
    ["@lsp.type.modifier"] = { link = '@operator' },
    ['@lsp.type.namespace'] = { link = '@namespace' },
    ["@lsp.type.number"] = { link = '@number' },
    ["@lsp.type.operator"] = { link = '@operator' },
    ['@lsp.type.parameter'] = { link = '@parameter' },
    ['@lsp.type.property'] = { link = '@property' },
    ["@lsp.type.regexp"] = { link = 'String' },
    ["@lsp.type.string"] = { link = 'String' },
    ["@lsp.type.struct"] = { link = '@type' },
    ["@lsp.type.type"] = { link = '@type' },
    ["@lsp.type.typeParameter"] = { link = '@type' },
    ["@lsp.type.variable"] = { link = 'Identifier' },


    ["@lsp.mod.abstract"] = { link = 'Type' },
    ["@lsp.mod.async"] = { ctermfg = c.blue_02 },
    ["@lsp.mod.declaration"] = { link = '@variable' },
    ["@lsp.mod.defaultLibrary"] = { link = '@namespace' }, -- stl
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
    ['@lsp.typemod.variable.functionScope'] = { link = '@parameter' },

    ['@lsp.typemod.parameter.functionScope'] = { link = '@parameter' },

    -- TODO Not working in cpp and apparently not here either
    -- ["@text.todo"] = { ctermbg = c.black_01, ctermfg = c.yellow_01, bold = true },
    -- ["@comment.todo"] = { ctermbg = c.black_01, ctermfg = c.yellow_01, bold = true },
    -- ["@comment.note"] = { ctermbg = c.black_01, ctermfg = c.yellow_01, bold = true },
}

