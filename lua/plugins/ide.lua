return {
  {
    "simrat39/rust-tools.nvim",
    config = function()
      local rt = require("rust-tools")

      rt.setup({
        server = {
          on_attach = function(_, bufnr)
            -- Hover actions
            --             vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
            -- Code action groups
            --vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
          end,
        },
        dap = {
          adapter = {
            type = "server",
            port = "${port}",
            executable = {
              command = "/home/aikixd/.local/share/nvim/mason/packages/codelldb/codelldb",
              args = { "--port", "${port}" },
            },
          },
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    -- opts will be merged with the parent spec
    opts = { autoformat = false },
  },
}
