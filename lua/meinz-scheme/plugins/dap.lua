local c = require 'meinz-scheme.colors'

return {
    DapBreakPoint = { ctermfg = c.red_02 },
    DapLogPoint = { ctermfg = c.yellow_01 },
    DapUINormal = { ctermbg = c.black_01 },

    DapUIStop = { ctermfg = c.red_02, bold = true },
    DapUIRestart = { ctermfg = c.green_02, bold = true },
    DapUIPlayPause = { ctermfg = c.green_02, bold = true },
    DapUIStepInto = { ctermfg = c.blue_02, bold = true },
    DapUIStepOver = { ctermfg = c.blue_02, bold = true },
    DapUIStepOut = { ctermfg = c.blue_02, bold = true },
    DapUIStepBack = { ctermfg = c.blue_02, bold = true },

    DapUIValue = { ctermfg = c.magenta_01 },
    DapUIWatchesValue = { ctermfg = c.green_02 },
    DapUIType = { ctermfg = c.yellow_01 },

    DapUIFloatBorder = { ctermfg = c.white_01, ctermbg = c.black_01 },
    DapUIFloatNormal = { ctermbg = c.black_01 },
    DapUILineNumber = { ctermfg = c.green_02 },
}
