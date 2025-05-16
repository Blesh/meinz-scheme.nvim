local colors = require 'meinz-scheme.colors'
local tc = colors.truec

return {
  normal = {
    a = { bg = tc.black_02, fg = tc.white_02, bold = true },
    b = { bg = tc.black_02, fg = tc.white_01 },
    c = { bg = tc.black_01, fg = tc.white_02 },
  },

  insert = {
    a = { bg = tc.black_02, fg = tc.white_02},
    b = { bg = tc.black_02, fg = tc.white_01 },
    c = { bg = tc.black_01, fg = tc.white_02 },
  },

  command = {
    a = { bg = tc.black_02, fg = tc.white_02},
    b = { bg = tc.black_02, fg = tc.white_01 },
    c = { bg = tc.black_01, fg = tc.white_02 },
  },

  visual = {
    a = { bg = tc.black_02, fg = tc.white_02},
    b = { bg = tc.black_02, fg = tc.white_01 },
    c = { bg = tc.black_01, fg = tc.white_02 },
  },

  replace = {
    a = { bg = tc.black_02, fg = tc.white_02},
    b = { bg = tc.black_02, fg = tc.white_01 },
    c = { bg = tc.black_01, fg = tc.white_02 },
  },

  terminal = {
    a = { bg = tc.black_02, fg = tc.white_02},
    b = { bg = tc.black_02, fg = tc.white_01 },
    c = { bg = tc.black_01, fg = tc.white_02 },
  },

  inactive = {
    a = { bg = tc.black_02, fg = tc.white_02},
    b = { bg = tc.black_02, fg = tc.white_01 },
    c = { bg = tc.black_01, fg = tc.white_02 },
  },
}

