local colors = require 'meinz-scheme.colors'
local c, tc = colors.termc, colors.truec

return {
  FzfLuaNormal              = { ctermfg = c.white_02, ctermbg = c.black_01, fg = tc.white_02, bg = tc.black_01 },
  FzfLuaBorder              = { ctermfg = c.white_01, fg = tc.white_01 },
  FzfLuaTitle               = { link = 'FzfLuaNormal' },
  FzfLuaTitleFlags          = { link = 'CursorLine' },
  FzfLuaBackdrop            = { ctermfg = c.white_01, ctermbg = c.black_01, fg = tc.white_01, bg = tc.black_01 },
  FzfLuaPreviewNormal       = { link = 'FzfLuaNormal' },
  FzfLuaPreviewBorder       = { link = 'FzfLuaBorder' },
  FzfLuaPreviewTitle        = { link = 'FzfLuaTitle' },
  FzfLuaCursor              = { link = 'Cursor' },
  FzfLuaCursorLine          = { link = 'CursorLine' },
  FzfLuaCursorLineNr        = { link = 'CursorLineNr' },
  FzfLuaSearch              = { link = 'IncSearch' }, -- builtin preview match highlight
  FzfLuaHeaderText          = { link = 'FzfLuaNormal' },

  FzfLuaDirPart             = { ctermfg = c.magenta, fg = tc.magenta },
  FzfLuaPathColNr           = { ctermfg = c.blue, fg = tc.blue },
  FzfLuaPathLineNr          = { ctermfg = c.orange, fg = tc.orange },

  FzfLuaLivePrompt          = { ctermfg = c.red, fg = tc.red, bold = true },
  FzfLuaFzfPrompt           = { ctermfg = c.white_02, fg = tc.white_02, bold = true },
  FzfLuaLiveSym             = { link = 'IncSearch' }
}
