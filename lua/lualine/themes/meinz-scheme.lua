local c = require 'meinz-scheme.colors'

return {
  normal = {
      a = { bg = c.black_02, fg = c.white_02, bold = true },
      --a = { bg = c.black_02, fg = c.white_02 },
      b = { bg = c.black_02, fg = c.white_01 },
      c = { bg = c.black_01, fg = c.white_02 },
  },
  
  insert = {
      a = { bg = c.black_02, fg = c.white_02},
      b = { bg = c.black_02, fg = c.white_01 },
      c = { bg = c.black_01, fg = c.white_02 },
  },
  
  command = {
      a = { bg = c.black_02, fg = c.white_02},
      b = { bg = c.black_02, fg = c.white_01 },
      c = { bg = c.black_01, fg = c.white_02 },
  },
  
  visual = {
      a = { bg = c.black_02, fg = c.white_02},
      b = { bg = c.black_02, fg = c.white_01 },
      c = { bg = c.black_01, fg = c.white_02 },
  },
  
  replace = {
      a = { bg = c.black_02, fg = c.white_02},
      b = { bg = c.black_02, fg = c.white_01 },
      c = { bg = c.black_01, fg = c.white_02 },
  },
  
  terminal = {
      a = { bg = c.black_02, fg = c.white_02},
      b = { bg = c.black_02, fg = c.white_01 },
      c = { bg = c.black_01, fg = c.white_02 },
  },
  
  inactive = {
      a = { bg = c.black_02, fg = c.white_02},
      b = { bg = c.black_02, fg = c.white_01 },
      c = { bg = c.black_01, fg = c.white_02 },
  },
}

