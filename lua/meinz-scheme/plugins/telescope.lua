local c = require 'meinz-scheme.colors'

return {
    -- background: entire layout background
    -- foreground: text and border colors 
    TelescopeNormal = { ctermbg = c.black_01, ctermfg = c.white_01 },
    -- same as above but strictly for the layout components
    TelescopePromptNormal = { ctermbg = c.black_01, ctermfg = c.white_02 },
    TelescopeResultsNormal = { ctermbg = c.black_01 },
    TelescopePreviewNormal = { ctermbg = c.black_01 },
    TelescopePreviewLine = { ctermbg = c.black_02, bold = true },

    -- currently selected result
    TelescopeSelection = { ctermbg = c.black_02, ctermfg = c.white_02, bold = true},
    -- Caret in results selection
    TelescopeSelectionCaret = { ctermfg = c.yellow_01, ctermbg = c.black_02, bold = true },
    TelescopePromptPrefix = { ctermbg = c.black_01, ctermfg = c.yellow_01 },
    TelescopePromptCounter = { ctermfg = c.yellow_01, ctermbg = c.black_01},
    TelescopeMatching = { ctermfg = c.green_02, bold = true },
    TelescopePreviewMatch = { ctermbg = c.black_02, ctermfg = c.green_02, bold = true },
}
