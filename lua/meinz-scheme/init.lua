local M = {}

local default_hl = require('meinz-scheme.main_groups.default')
local lsp_hl = require('meinz-scheme.main_groups.lsp')
local tree_sitter_hl = require('meinz-scheme.main_groups.treesitter')

local nvim_tree_hl = require('meinz-scheme.plugins.nvim-tree')
local cmp_hl = require('meinz-scheme.plugins.cmp')
local gitsigns_hl = require('meinz-scheme.plugins.gitsigns')
-- local fzf_lua_hl = require('meinz-scheme.plugins.fzf-lua')
local trouble_hl = require('meinz-scheme.plugins.trouble')
local telescope_hl = require('meinz-scheme.plugins.telescope')
local dap_hl = require('meinz-scheme.plugins.dap')
local neogit = require('meinz-scheme.plugins.neogit')

local hl_groups = vim.tbl_extend('force', default_hl, lsp_hl, tree_sitter_hl, nvim_tree_hl, cmp_hl, gitsigns_hl, trouble_hl, telescope_hl, dap_hl, neogit)

function M.setup()
    for group, colors in pairs(hl_groups) do
        vim.api.nvim_set_hl(0, group, colors)
    end
end

return M
