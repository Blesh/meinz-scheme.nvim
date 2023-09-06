local c = require 'meinz-scheme.colors'

return {
    CmpItemAbbrDepre = { ctermfg = c.red_01, cterm=bold},
    CmpItemAbbrMatch = { ctermfg = c.green_02, cterm=bold},
    CmpItemAbbrMatchFuzzy = { ctermfg = c.green_02, cterm=bold},
    CmpItemMenu = { ctermfg = c.blue_02, cterm=bold},
    CmpItemKind = { ctermfg = c.yellow_01 },
}

--vim.cmd [[highlight! CmpItemAbbrDeprecated ctermfg=1]]
--vim.cmd [[highlight! CmpItemAbbrMatch cterm=bold ctermfg=2]] -- Matching characters from beginning
--vim.cmd [[highlight! CmpItemAbbrMatchFuzzy cterm=bold ctermbg=NONE ctermfg=2]] -- Fuzzy Matching characters
--vim.cmd [[highlight! CmpItemMenu ctermbg=None ctermfg=13]] -- Menu field
--vim.cmd [[highlight! CmpItemKind ctermbg=None ctermfg=3]] -- Kind field
