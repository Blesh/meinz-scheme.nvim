-- Everforest
-- https://github.com/sainnhe/everforest/blob/master/palette.md
local true_colors = {
  black_01 = "#272E33",
  black_02 = "#2E383C",
  white_01 = "#D3C6AA",
  white_02 = "#FFFBEF",
  red = "#E67E80",
  green = "#A7C080",
  yellow = "#DBBC7F",
  orange = "#E69875",
  blue = "#7FBBB3",
  magenta = "#D699B6",
  cyan = "#83C092",
}

local term_colors = {
  black_01 = 0,
  black_02 = 8,
  white_01 = 7,
  white_02 = 15,
  red = 1,
  green = 2,
  yellow = 3,
  orange = 16,
  blue = 4,
  magenta = 5,
  cyan = 6,
}

return {
  termc = term_colors,
  truec = true_colors
}
