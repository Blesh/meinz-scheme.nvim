local c = require 'meinz-scheme.colors'

--DiffAdd = { ctermbg = c.black_02, ctermfg = c.green_01, bold = true },
--DiffDelete = { ctermbg = c.black_02, ctermfg = c.white_02, bold = true },
--DiffText  = { ctermbg = c.black_02, ctermfg = c.yellow_02, bold = true},
--DiffChange = { },

return {
    -- GitSignsAdd = { 'GitGutterAdd', 'SignifySignAdd', 'DiffAddedGutter', 'diffAdded', 'DiffAdd', desc = "Used for the text of 'add' signs.",
    -- GitSignsAdd = { ctermfg = c.green_02, ctermbg = c.black_02, bold = true },
    GitGutterAdd = { ctermfg = c.green_02, ctermbg = c.black_01},

    -- GitSignsChange = { 'GitGutterChange', 'SignifySignChange', 'DiffModifiedGutter', 'diffChanged', 'DiffChange', desc = "Used for the text of 'change' signs.", }
    -- GitSignsChange = { ctermfg = c.yellow_02, ctermbg = c.black_02, bold = true },
    GitGutterChange = { ctermfg = c.yellow_02, ctermbg = c.black_01},

    --GitSignsDelete = { 'GitGutterDelete', 'SignifySignDelete', 'DiffRemovedGutter', 'diffRemoved', 'DiffDelete', desc = "Used for the text of 'delete' signs.", }
    GitSignsDelete = { ctermfg = c.red_02, ctermbg = c.black_01, bold = true },

    -- { GitSignsAddPreview = { 'GitGutterAddLine', 'SignifyLineAdd', 'DiffAdd', desc = "Used for added lines in previews.", }, },
    GitSignsAddPreview = { link = 'GitSignsAdd', },
    -- { GitSignsDeletePreview = { 'GitGutterDeleteLine', 'SignifyLineDelete', 'DiffDelete', desc = "Used for deleted lines in previews.", }, },
    GitSignsDeletePreview = { link = 'GitSignsDelete', },
    -- { GitSignsCurrentLineBlame = { 'NonText', desc = "Used for current line blame.", }, },
    GitSignsCurrentLineBlame = { ctermfg = c.yellow_01 }
}
