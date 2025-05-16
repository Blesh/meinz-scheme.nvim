local colors = require 'meinz-scheme.colors'
local c, tc = colors.termc, colors.truec

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

  NeogitBranch                = { ctermfg = c.red, fg = tc.red },
  NeogitBranchHead            = { ctermfg = c.red, fg = tc.red },
  NeogitObjectId              = { ctermfg = c.red, fg = tc.red },
  NeogitRemote                = { ctermfg = c.magenta, fg = tc.magenta },
  NeogitTagName               = { ctermfg = c.magenta, fg = tc.magenta },

  -- NeogitStatusHEAD
  NeogitDiffContext           = { ctermfg = c.white_02, ctermbg = c.black_01, fg = tc.white_02, bg = tc.black_01 },
  NeogitDiffAdd               = { ctermfg = c.green, ctermbg = c.black_01, fg = tc.gree, bg = tc.black_01 },
  NeogitDiffDelete            = { ctermfg = c.red, ctermbg = c.black_01, fg = tc.red, bg = tc.black_01 },
  NeogitDiffHeader            = { ctermfg = c.yellow, ctermbg = c.black_01, fg = tc.yellow, bg = tc.black_01 },

  NeogitDiffContextHighlight  = { ctermfg = c.white_02, ctermbg = c.black_01, fg = tc.white_02, bg = tc.black_01 },
  NeogitDiffDeleteHighlight   = { ctermfg = c.red, ctermbg = c.black_01, fg = tc.red, bg = tc.black_01 },
  NeogitDiffAddHighlight      = { ctermfg = c.green, ctermbg = c.black_01, fg = tc.green, bg = tc.black_01 },
  NeogitDiffHeaderHighlight   = { ctermfg = c.yellow, ctermbg = c.black_01, fg = tc.yellow, bg = tc.black_01 },
  NeogitDiffContextCursor     = { link = 'NeogitContextHeaderHighlight' },
  NeogitDiffAddCursor         = { link = 'NeogitDiffAddHighlight' },
  NeogitDiffDeleteCursor      = { link = 'NeogitDiffDeleteHighlight' },
  NeogitDiffHeaderCursor      = { link = 'NeogitDiffHeaderHighlight' },
  -- This is responsible for the line showing @@ -0,0 +1 @@ when cursor is on the line
  NeogitHunkHeader            = { ctermfg = c.white_02, ctermbg = c.black_01, fg = tc.white_02, bg = tc.black_01, bold = true },
  NeogitHunkHeaderHighlight   = { ctermfg = c.white_02, ctermbg = c.black_01, fg = tc.white_02, bg = tc.black_01, bold = true},
  NeogitHunkHeaderCursor      = { link = 'NeogitHunkHeaderHighlight'}, -- NeogitHunkHeaderHighlight' },

  -- Section Headers
  NeogitSectionHeader         = { ctermfg = c.yellow, ctermbg = c.black_01, fg = tc.yellow, bg = tc.black_01, bold = true },
  -- Applied to the label on the left of filenames.
  NeogitChangeModified        = { ctermfg = c.orange, ctermbg = c.black_01, fg = tc.orange, bg = tc.black_01, bold = true },
  NeogitChangeAdded           = { ctermfg = c.green, ctermbg = c.black_01, fg = tc.green, bg = tc.black_01, bold = true },
  NeogitChangeDeleted         = { ctermfg = c.red, ctermbg = c.black_01, fg = tc.red, bg = tc.black_01, bold = true },
  NeogitChangeRenamed         = { ctermfg = c.orange, ctermbg = c.black_01, fg = tc.orange, bg = tc.black_01, bold = true },
  NeogitChangeUpdated         = { ctermfg = c.yellow, ctermbg = c.black_01, fg = tc.yellow, bg = tc.black_01, bold = true },
  NeogitChangeCopied          = { ctermfg = c.yellow, ctermbg = c.black_01, fg = tc.yellow, bg = tc.black_01, bold = true },
  NeogitChangeBothModified    = { ctermfg = c.yellow, ctermbg = c.black_01, fg = tc.yellow, bg = tc.black_01, bold = true },
  NeogitChangeNewFile         = { ctermfg = c.green, ctermbg = c.black_01, fg = tc.green, bg = tc.black_01, bold = true },

  -- Status Buffer Label Next to Filenames
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
