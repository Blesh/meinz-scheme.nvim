local colors = require 'meinz-scheme.colors'
local c, tc = colors.termc, colors.truec

return {
  CmpItemAbbrDepre        = { ctermfg = c.red, fg = tc.red, bold = true, strikethrough = true },
  CmpItemAbbrMatch        = { ctermfg = c.red, fg = tc.red, bold = true },
  CmpItemAbbrMatchFuzzy   = { ctermfg = c.red, fg = tc.red, bold = true },
  CmpItemMenu             = { ctermfg = c.yellow, fg = tc.yellow, bold = true },
  CmpItemKind             = { ctermfg = c.yellow, fg = tc.yellow },
}
