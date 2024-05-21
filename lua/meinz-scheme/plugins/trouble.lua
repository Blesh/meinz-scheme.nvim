local c = require 'meinz-scheme.colors'

return {

    -- Signature Help
    -- LspSignatureActiveParameter = { ctermbg = c.black_01 },
    TroubleNormal = { ctermbg = c.black_01, },

    TroubleText = { ctermfg = c.white_02, },

    TroubleCount = { ctermfg = c.white_02, ctermbg = c.black_01, bold = true },

    TroubleFile = { ctermfg = c.yellow_01, },

    TroubleIndent = { ctermfg = c.black_02, },

    TroubleFoldIcon = { ctermfg = c.blue_01, },

    TroublePreview = { ctermbg = c.black_02, bold = true },

    TroubleWarning = { ctermfg = c.yellow_02 },

    TroubleLocation = { ctermfg = c.white_02, bold = true },
}
