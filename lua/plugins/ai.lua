return {
  {
    "supermaven-inc/supermaven-nvim",
    enabled = not ad4mantis.atWork,
    opts = {
      ignore_filetypes = {},
    },
  },
  {
    "zbirenbaum/copilot.lua",
    enabled = ad4mantis.atWork,
  },
  {
    "zbirenbaum/copilot-cmp",
    enabled = ad4mantis.atWork,
  },
}
