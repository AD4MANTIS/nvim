return {
  "folke/snacks.nvim",
  opts = {
    ---@class snacks.dashboard.Config
    ---@field sections snacks.dashboard.Section
    ---@field formats table<string, snacks.dashboard.Text|fun(item:snacks.dashboard.Item, ctx:snacks.dashboard.Format.ctx):snacks.dashboard.Text>
    dashboard = {
      width = 60,
      example = "files",
      sections = {
        { section = "header", enabled = false },
        function()
          local handle = io.popen("find ~/Pictures/Wallpaper -maxdepth 1 -type f | sort -R | head -n 1")
          local random_file = handle:read("*a"):gsub("%s+$", "") -- Trim trailing whitespace/newline
          handle:close()
          print("Random file: " .. random_file)
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
              -- chafa --format iterm --size=1000x20
              cmd = 'chafa "'
                .. random_file
                .. '" --format symbols --symbols ascii --fg-only --size=60x20 --align center; sleep .1',
              height = 15,
              padding = 1,
            },
          }
        end,
        { section = "keys", gap = 1, padding = 2 },
        { icon = " ", title = "Projects", section = "projects", indent = 3, gap = 1, padding = 2 },
        { section = "session" },
        { section = "startup" },
      },
    },
  },
}
