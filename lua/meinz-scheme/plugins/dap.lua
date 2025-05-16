local colors = require 'meinz-scheme.colors'
local c, tc = colors.termc, colors.truec

return {
  DapBreakPoint       = { ctermfg = c.red, fg = tc.red },
  DapLogPoint         = { ctermfg = c.yellow, fg = tc.yellow },
  DapUINormal         = { ctermbg = c.black_01, fg = tc.black_01 },

  DapUIStop           = { ctermfg = c.red, fg = tc.red, bold = true },
  DapUIRestart        = { ctermfg = c.green, fg = tc.green, bold = true },
  DapUIPlayPause      = { ctermfg = c.green, fg = tc.gree, bold = true },
  DapUIStepInto       = { ctermfg = c.blue, fg = tc.blue, bold = true },
  DapUIStepOver       = { ctermfg = c.blue, fg = tc.blue, bold = true },
  DapUIStepOut        = { ctermfg = c.blue, fg = tc.blue, bold = true },
  DapUIStepBack       = { ctermfg = c.blue, fg = tc.blue, bold = true },

  DapUIValue          = { ctermfg = c.magenta, fg = tc.magenta },
  DapUIWatchesValue   = { ctermfg = c.green, fg = tc.green },
  DapUIType           = { ctermfg = c.yellow, fg = tc.yellow },

  DapUIFloatBorder    = { ctermfg = c.white_01, ctermbg = c.black_02, fg = tc.white_01, bg = tc.black_02 },
  DapUIFloatNormal    = { ctermbg = c.black_01, bg = tc.black_01 },
  DapUILineNumber     = { ctermfg = c.green, fg = tc.green },
}
