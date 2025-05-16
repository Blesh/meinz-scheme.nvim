local c = require 'meinz-scheme.colors'

return {
    -- Normals.
    NvimTreeNormal = { ctermfg = c.white_02, ctermbg = c.black_01 },
    NvimTreeNormalNC = { ctermfg = c.white_02, ctermbg = c.black_01 },

    -- Folders.
    NvimTreeFolderName = { ctermfg = c.blue },
    NvimTreeOpenedFolderName = { ctermfg = c.blue },
    NvimTreeEmptyFolderName = { ctermfg = c.blue },
    NvimTreeFolderIcon = { ctermfg = c.yellow},

    -- Files.
    NvimTreeOpenedFile = { ctermbg = c.black_02 },
    NvimTreeOpenedName = { ctermfg = c.blue },
    NvimTreeSpecialFile = { ctermfg = c.white_02 },
    NvimTreeImageFile = { ctermfg = c.white_02 },

    -- Root.
    NvimTreeRootFolder = { ctermfg = c.yellow, bold = true, underline = true },

    -- Git.
    NvimTreeGitDirty = { ctermfg = c.orange },
    NvimTreeGitNew = { ctermfg = c.green },
    NvimTreeGitDeleted = { ctermfg = c.red },
    NvimTreeGitStaged = { ctermfg = c.green },

    -- UI.
    -- NvimTreeIndentMarker = { ctermfg = c.black_02 },
    -- NvimTreeWinSeparator = { ctermfg = c.white_01, ctermbg = c.black_02 },

    -- Cursor.
    -- NvimTreeCursorLine = { ctermbg = c.gray1 },
    -- NvimTreeCursor = { ctermbg = c.none, ctermfg = c.none },

    -- Misc.
    NvimTreeSymlink = { ctermfg = c.yellow },
    NvimTreeSymlinkFolderName = { ctermfg = c.cyan },
    NvimTreeExecFile = { ctermfg = c.blue },
}
