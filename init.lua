-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

require("neo-tree").setup({
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
    },
  },
})
