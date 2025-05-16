local colors = require 'meinz-scheme.colors'
local c, tc = colors.termc, colors.truec

return {
  -- Signature Help
  -- LspSignatureActiveParameter = { ctermbg = c.black_01 },
  TroubleNormal   = { ctermbg = c.black_01, bg = tc.black_01 },
  TroubleText     = { ctermfg = c.white_02, fg = tc.white_02 },
  TroubleCount    = { ctermfg = c.white_02, ctermbg = c.black_01, fg = tc.white_02, bg = tc.black_01, bold = true },
  TroubleFile     = { ctermfg = c.yellow, fg = tc.yellow },
  TroubleIndent   = { ctermfg = c.black_02, fg = tc.black_02 },
  TroubleFoldIcon = { ctermfg = c.blue, fg = tc.blue },
  TroublePreview  = { ctermbg = c.black_02, bg = tc.black_02, bold = true },
  TroubleWarning  = { ctermfg = c.orange, fg = tc.orange },
  TroubleLocation = { ctermfg = c.white_02, fg = tc.white_02, bold = true },
}
