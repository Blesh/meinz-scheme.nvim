local c = require 'meinz-scheme.colors'

return {
    -- Normals.
    NvimTreeNormal = { ctermfg = c.white_02, ctermbg = c.black_01 },
    NvimTreeNormalNC = { ctermfg = c.white_02, ctermbg = c.black_01 },

    -- Folders.
    NvimTreeFolderName = { ctermfg = c.blue_01 },
    NvimTreeOpenedFolderName = { ctermfg = c.blue_01 },
    NvimTreeEmptyFolderName = { ctermfg = c.blue_01 },
    NvimTreeFolderIcon = { ctermfg = c.yellow_01},

    -- Files.
    NvimTreeOpenedFile = { ctermbg = c.black_02 },
    NvimTreeOpenedName = { ctermfg = c.blue_01 },
    NvimTreeSpecialFile = { ctermfg = c.white_02 },
    NvimTreeImageFile = { ctermfg = c.white_02 },

    -- Root.
    NvimTreeRootFolder = { ctermfg = c.yellow_01, bold = true, underline = true },

    -- Git.
    NvimTreeGitDirty = { ctermfg = c.yellow_02 },
    NvimTreeGitNew = { ctermfg = c.green_02 },
    NvimTreeGitDeleted = { ctermfg = c.red_02 },
    NvimTreeGitStaged = { ctermfg = c.green_01 },

    -- UI.
    -- NvimTreeIndentMarker = { ctermfg = c.black_02 },
    -- NvimTreeWinSeparator = { ctermfg = c.white_01, ctermbg = c.black_02 },

    -- Cursor.
    -- NvimTreeCursorLine = { ctermbg = c.gray1 },
    -- NvimTreeCursor = { ctermbg = c.none, ctermfg = c.none },

    -- Misc.
    NvimTreeSymlink = { ctermfg = c.yellow_01 },
    NvimTreeSymlinkFolderName = { ctermfg = c.cyan_02 },
    NvimTreeExecFile = { ctermfg = c.blue_01 },
}
