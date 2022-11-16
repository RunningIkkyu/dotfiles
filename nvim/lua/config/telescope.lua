vim.api.nvim_set_keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "<leader>fc", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { silent=true, noremap= true })

-- lsp releated
vim.api.nvim_set_keymap("n", "<leader>gr", "<cmd>Telescope lsp_references<cr>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "<leader>gd", "<cmd>Telescope lsp_definition<cr>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "<leader>ga", "<cmd>Telescope lsp_code_actions<cr>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "<leader>gi", "<cmd>Telescope lsp_code_implementations<cr>", { silent=true, noremap= true })
vim.api.nvim_set_keymap("n", "<leader>gs", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", { silent=true, noremap= true })



-- use <CR> to send selected item to quick fix list.
local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

local custom_actions = {}

function custom_actions.fzf_multi_select(prompt_bufnr)
    local picker = action_state.get_current_picker(prompt_bufnr)
    local num_selections = table.getn(picker:get_multi_selection())

    if num_selections > 1 then
        -- actions.file_edit throws - context of picker seems to change
        --actions.file_edit(prompt_bufnr)
        actions.send_selected_to_qflist(prompt_bufnr)
        actions.open_qflist()
    else
        actions.file_edit(prompt_bufnr)
    end
end

require("telescope").setup {
    defaults = {
        mappings = {
            i = {
                -- close on escape
                ["<esc>"] = actions.close,
                ["<tab>"] = actions.toggle_selection + actions.move_selection_next,
                ["<s-tab>"] = actions.toggle_selection + actions.move_selection_previous,
                ["<cr>"] = custom_actions.fzf_multi_select
            },
            n = {
                ["<tab>"] = actions.toggle_selection + actions.move_selection_next,
                ["<s-tab>"] = actions.toggle_selection + actions.move_selection_previous,
                ["<cr>"] = custom_actions.fzf_multi_select
            }
        }
    }
}

