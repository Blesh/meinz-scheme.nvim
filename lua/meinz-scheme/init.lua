local M = {}

local editor_hl = require('meinz-scheme.main_groups.editor')
local syntax_hl = require('meinz-scheme.main_groups.syntax')
local lsp_hl = require('meinz-scheme.main_groups.lsp')
local diff_hl = require('meinz-scheme.main_groups.diff')

local tree_sitter_hl = require('meinz-scheme.plugins.treesitter')
local nvim_tree_hl = require('meinz-scheme.plugins.nvim-tree')
local cmp_hl = require('meinz-scheme.plugins.cmp')
local gitsigns_hl = require('meinz-scheme.plugins.gitsigns')
local fzf_lua_hl = require('meinz-scheme.plugins.fzf-lua')
local trouble_hl = require('meinz-scheme.plugins.trouble')
local telescope_hl = require('meinz-scheme.plugins.telescope')
local dap_hl = require('meinz-scheme.plugins.dap')

local hl_groups = vim.tbl_extend('force', editor_hl, syntax_hl, lsp_hl, diff_hl, tree_sitter_hl, nvim_tree_hl, cmp_hl, gitsigns_hl, fzf_lua_hl, trouble_hl, telescope_hl, dap_hl)

function M.setup()
    for group, colors in pairs(hl_groups) do
        vim.api.nvim_set_hl(0, group, colors)
    end
end

return M
