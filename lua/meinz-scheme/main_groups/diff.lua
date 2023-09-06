local c = require 'meinz-scheme.colors'

return {
    DiffAdd = { ctermbg = c.black_02, ctermfg = c.green_02, bold = true },
    DiffDelete = { ctermbg = c.black_02, ctermfg = c.red_02, bold = true },
    DiffText  = { ctermbg = c.black_02, ctermfg = c.yellow_02, bold = true},
    DiffChange = { },

    --diffAdded = { link = 'DiffAdd'},
    --diffRemoved = { ctermfg = c.red_01 },
    --diffChanged = { ctermfg = c.blue_01 },

    --diffOldFile = { ctermfg = c.magenta_01 },
    --diffNewFile = { ctermfg = c.green_01 },
    --diffFile = { ctermfg = c.white_01 },

    --diffLine = {},
    --diffIndexLinex = {},
}
