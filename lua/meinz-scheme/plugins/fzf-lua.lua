local c = require 'meinz-scheme.colors'

return {
    FzfLuaNormal = { ctermbg = c.black_01, ctermfg = c.white_02 },
    FzfLuaSearch = { ctermfg = c.green_02, bold = true },
    FzfLuaCursorLine = { ctermbg = c.black_01 },
    FzfLuaInfo = { ctermfg = c.cyan_01 },
    FzfLuaPrompt = { ctermfg = c.yellow_01 },
    FzfLuaMarker = { ctermfg = c.yellow_01 },
    FzfLuaPointer = { ctermfg = c.yellow_01 },
    FzfLuaSpinner = { ctermfg = c.blue_01 },
    FzfLuaBorder = { ctermfg = c.white_01 },
    FzfLuaGutter = { ctermbg = c.black_01 },
    FzfLuaTitle = { ctermfg = c.white_02 },
    FzfLuaScrollbar = { ctermfg = c.black_01 },
}
