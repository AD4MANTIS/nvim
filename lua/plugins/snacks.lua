return {
  "folke/snacks.nvim",
  opts = {
    ---@class snacks.dashboard.Config
    dashboard = {
      width = 70,
      sections = {
        { section = "header", enabled = false },
        function()
          local handle = io.popen("find ~/Pictures/Wallpaper -maxdepth 1 -type f | sort -R | head -n 1")
          local random_file = handle:read("*a"):gsub("%s+$", "") -- Trim trailing whitespace/newline
          handle:close()
          return {
            {
              section = "terminal",
              -- Ascii transparent
              -- ascii-image-converter --color
              --
              -- Ascii transparent
              -- chafa --format symbols --fg-only --symbols ascii
              --
              -- Pixelalted
              -- chafa --format symbols --symbols vhalf
              --
              -- Pixalated with a bit more detail
              -- chafa --format symbols --symbols vhalf,quad
              --
              -- Braille transparent
              -- chafa --format symbols --symbols braille --fg-only
              --
              -- Native Image
              -- chafa --format iterm
              cmd = 'chafa "'
                .. random_file
                .. '" --format symbols --symbols ascii --fg-only --size=70x20 --align center; sleep .1',
              width = 70,
              height = 20,
              padding = 1,
            },
          }
        end,
        { section = "keys", gap = 1, padding = 2 },
        { icon = " ", title = "Projects", section = "projects", indent = 3, gap = 1, padding = 1 },
        { section = "session" },
        { section = "startup" },
      },
    },
  },
}
