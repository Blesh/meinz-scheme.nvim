local colors = require 'meinz-scheme.colors'
local c, tc = colors.termc, colors.truec

return {
  ['@markup.heading.1.markdown']    = { ctermfg = c.white_01, ctermbg = c.black_02, fg = tc.white_01, bg = tc.black_02, bold = true },
  RenderMarkdownH1                  = { ctermfg = c.white_01, ctermbg = c.black_02, fg = tc.white_01, bg = tc.black_02, bold = true },
  RenderMarkdownH2                  = { link = 'RenderMarkdownH1' },
  RenderMarkdownH3                  = { link = 'RenderMarkdownH1' },
  RenderMarkdownH4                  = { link = 'RenderMarkdownH1' },
  RenderMarkdownH5                  = { link = 'RenderMarkdownH1' },
  RenderMarkdownH6                  = { link = 'RenderMarkdownH1' },

  RenderMarkdownH1Bg                = { link = '@markup.heading.1.markdown' },
  RenderMarkdownH2Bg                = { link = 'RenderMarkdownH1Bg' },
  RenderMarkdownH3Bg                = { link = 'RenderMarkdownH1Bg' },
  RenderMarkdownH4Bg                = { link = 'RenderMarkdownH1Bg' },
  RenderMarkdownH5Bg                = { link = 'RenderMarkdownH1Bg' },
  RenderMarkdownH6Bg                = { link = 'RenderMarkdownH1Bg' },

  RenderMarkdownCode                = { ctermbg = c.black_01, bg = tc.black_01 }, -- ColorColumn, Code block
  RenderMarkdownCodeInline          = { ctermfg = c.blue, ctermbg = c.black_01, fg = tc.blue, bg = tc.black_01 }, -- RenderMarkdownCode, Inline code background
  RenderMarkdownCodeBorder          = { ctermbg = c.black_02, bg = tc.black_02, bold = true }, -- Code border, 
  RenderMarkdownCodeFallback        = { link = 'Normal' }, -- Normal, Fallback for code language

  ['@markup.quote']                 = { ctermfg = c.white_01, ctermbg = c.black_01, fg = tc.white_01, bg = tc.black_01, italic = true },
  ['@markup.raw.block.markdown']    = { ctermfg = c.white_01, ctermbg = c.black_01, fg = tc.white_01, bg = tc.black_01 },
  -- RenderMarkdownQuote             @markup.quote                        Default for block quote
  -- RenderMarkdownQuote1            RenderMarkdownQuote                  Level 1 block quote marker
  -- RenderMarkdownQuote2            RenderMarkdownQuote                  Level 2 block quote marker
  -- RenderMarkdownQuote3            RenderMarkdownQuote                  Level 3 block quote marker
  -- RenderMarkdownQuote4            RenderMarkdownQuote                  Level 4 block quote marker
  -- RenderMarkdownQuote5            RenderMarkdownQuote                  Level 5 block quote marker
  -- RenderMarkdownQuote6            RenderMarkdownQuote                  Level 6 block quote marker

  -- RenderMarkdownInlineHighlight   RenderMarkdownCodeInline             Inline highlights contents

  ['@markup.link']                  = { ctermfg = c.blue, ctermbg = c.black_01, fg = tc.blue, bg = tc.black_01, underline = true },
  ['@markup.link.url']              = { link = '@markup.link.url' },
  ['@markup.link.label']            = { ctermfg = c.red, ctermbg = c.black_01, fg = tc.red, bg = tc.black_01, bold = true },
  -- RenderMarkdownLink              @markup.link.label.markdown_inline   Image & hyperlink icons
  -- RenderMarkdownWikiLink          RenderMarkdownLink                   WikiLink icon & text

  RenderMarkdownTableHead           = { ctermfg = c.white_01, fg = tc.white_01 }, -- @markup.heading, Pipe table heading rows
  RenderMarkdownTableRow            = { ctermfg = c.white_01, ctermbg = c.black_01, fg = tc.white_01, bg = tc.black_01 }, -- , Normal, Pipe table body rows
  RenderMarkdownTableFill           = { ctermfg = c.white_02, ctermbg = c.black_01, fg = tc.white_02, bg = tc.black_01 }, -- Conceal, Pipe table inline padding
  RenderMarkdownBullet              = { ctermfg = c.white_01, ctermbg = c.black_01, fg = tc.white_01, bg = tc.black_01 }, -- Normal, List item bullet points

  ['@markup.list.unchecked']        = { ctermfg = c.white_01, fg = tc.white_01 },
  ['@markup.list.checked']          = { ctermfg = c.white_01, fg = tc.white_01 },
  -- RenderMarkdownUnchecked         @markup.list.unchecked               Unchecked checkbox
  -- RenderMarkdownChecked           @markup.list.checked                 Checked checkbox

  -- RenderMarkdownDash, LineNr, Thematic break line
  -- RenderMarkdownIndent, Whitespace, Indent icon
  -- RenderMarkdownHtmlComment, @comment, HTML comment inline text
  -- TODO Not sure what this does
  -- RenderMarkdownSign = { ctermfg = c.white_01, ctermbg = c.black_01 }, -- SignColumn, Sign column background

  -- RenderMarkdownMath              @markup.math                         Latex lines
  -- RenderMarkdownTodo              @markup.raw                          Todo custom checkbox
  -- RenderMarkdownSuccess           DiagnosticOk                         Success related callouts
  -- RenderMarkdownInfo              DiagnosticInfo                       Info related callouts
  -- RenderMarkdownHint              DiagnosticHint                       Hint related callouts
  -- RenderMarkdownWarn              DiagnosticWarn                       Warning related callouts
  -- RenderMarkdownError             DiagnosticError                      Error related callouts
}
