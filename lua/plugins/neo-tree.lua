return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab

    window = {
      position = "left",
      width = 45,
    },

    filesystem = {
      filtered_items = {
        visible = false, -- when true, they will just be displayed differently than normal items
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_hidden = true, -- only works on Windows for hidden files/directories
        hide_by_name = {
          ".DS_Store",
          "thumbs.db",
          "node_modules",
          ".git",
        },
        always_show = { -- remains visible even if other settings would normally hide it
          --".gitignored",
        },
        never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
          ".DS_Store",
          --"thumbs.db",
        },
      },
    },
  },
}
