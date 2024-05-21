local c = require 'meinz-scheme.colors'

return {
    -- Neogit
    -- NeogitBranch                Local branches
    -- NeogitRemote                Remote branches
    -- NeogitObjectId              Object's SHA hash
    -- NeogitStash                 Stash name
    -- TODO
        -- NeogitFold                  Folded text highlight
        -- NeogitRebaseDone            Current position within rebase
        -- NeogitTagDistance           Number of commits between the tag and HEAD

    NeogitBranch = { ctermfg = c.red_01 },
    NeogitBranchHead = { ctermfg = c.red_01 },
    NeogitObjectId = { ctermfg = c.red_01 },
    NeogitRemote = { ctermfg = c.magenta_01},
    NeogitTagName = { ctermfg = c.magenta_01},

    NeogitHunkHeader = { ctermbg = c.black_01, ctermfg = c.yellow_01 },
    NeogitDiffContext = { ctermbg = c.black_01, ctermfg = c.white_02 },
    NeogitDiffAdd = { ctermfg = c.green_01, ctermbg = c.black_01 },
    NeogitDiffDelete = { ctermfg = c.red_01, ctermbg = c.black_01 },
    NeogitDiffHeader = { ctermbg = c.black_01, ctermfg = c.yellow_01 },

    NeogitHunkHeaderHighlight = { ctermbg = c.black_01, ctermfg = c.yellow_01 },
    NeogitDiffContextHighlight = { ctermbg = c.black_01, ctermfg = c.white_02 },
    NeogitDiffDeleteHighlight = { ctermfg = c.red_01, ctermbg = c.black_01 },
    NeogitDiffAddHighlight = { ctermfg = c.green_01, ctermbg = c.black_01 },
    NeogitDiffHeaderHighlight = { ctermbg = c.black_01, ctermfg = c.yellow_01 },

    -- Section Headers
    NeogitSectionHeader = { ctermfg = c.cyan_01, bold = true, ctermbg = c.black_01 },
    -- Applied to the label on the left of filenames.
    NeogitChangeModified = { ctermfg = c.yellow_01, ctermbg = c.black_01 },
    NeogitChangeAdded = { ctermfg = c.green_01, ctermbg = c.black_01 },
    NeogitChangeDeleted = { ctermfg = c.red_01, ctermbg = c.black_01 },
    NeogitChangeRenamed = { ctermfg = c.yellow_02, ctermbg = c.black_01 },
    NeogitChangeUpdated = { ctermfg = c.yellow_01, ctermbg = c.black_01 },
    NeogitChangeCopied = { ctermfg = c.yellow_01, ctermbg = c.black_01 },
    NeogitChangeBothModified = { ctermfg = c.yellow_01, ctermbg = c.black_01 },
    NeogitChangeNewFile = { ctermfg = c.green_01, ctermbg = c.black_01 },

    --NeogitPopupSectionTitle = { ctermfg = c.green_01 },
    --NeogitPopupBranchName      Applied to the current branch name for emphasis
    --NeogitPopupBold            Applied on "@{upstream}" and "pushRemote" for
    --                       emphasis (but less emphasis than BranchName)

    --NeogitPopupSwitchKey       Applied to the key that will toggle switch
    --NeogitPopupSwitchEnabled   Applied to the flag if enabled
    --NeogitPopupSwitchDisabled  Applied to the flag if disabled
    --
    --NeogitPopupOptionKey       Applied to the key that will trigger option
    --NeogitPopupOptionEnabled   Applied if option is set
    --NeogitPopupOptionDisabled  Applied if option has no value
    --
    --NeogitPopupConfigKey       Applied to the key that triggers config
    --NeogitPopupConfigEnabled   Applied to enabled config value
    --NeogitPopupConfigDisabled  Applied to config without value
    --
    --NeogitPopupActionKey       Applied to key that triggers function
    --NeogitPopupActionDisabled  Applied to key when function is unimplemented


}
