local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "gruvbox",
  theme_toggle = { "gruvbox", "gruvbox_light" },
  -- transparency = true,
  hl_override = highlights.override,
  hl_add = highlights.add,
  nvdash = {
	  -- header = {"Hello"},
    header = {
  "      |\\      _,,,---,,_            ",
	"ZZZzz /,`.-'`'    -.  ;-;;,_        ",
	"     |,4-  ) )-,_. ,\\ (  `'-'       ",
	"    '---''(_/--'  `-'\\_)            "
    },
    -- header = {
    --   "          ▀████▀▄▄              ▄█ ",
    --   "            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ",
    --   "    ▄        █          ▀▀▀▀▄  ▄▀  ",
    --   "   ▄▀ ▀▄      ▀▄              ▀▄▀  ",
    --   "  ▄▀    █     █▀   ▄█▀▄      ▄█    ",
    --   "  ▀▄     ▀▄  █     ▀██▀     ██▄█   ",
    --   "   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ",
    --   "    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ",
    --   "   █   █  █      ▄▄           ▄▀   ",
    -- },
 --    header = {
 --  "                                                                                  ",
	-- "                                                                                  ",
	-- "                      *((##*                                                      ",
	-- "                  /###%%#%&&&%,                           .%((//(/.               ",
	-- "                  #%%&&&&@@@@@@@*                        #%#&%@&%%##%%            ",
	-- "                 &&&@@@@@@@@@@@@@   .**(/(,*,/,*,       &@@@@@@@@@&&%%%*          ",
	-- "                 @@@@@@@@@@&@*                         %@@@@@@@@@@@@&&&&          ",
	-- "                  @@@@%/,               ,                 /@&%@@@@@@@&&&*         ",
	-- "                   &@,                 .                      /%@@@@@@@&.         ",
	-- "                .(..                  ,                         *#@@@@@#          ",
	-- "              .(                                                 .@@@@*           ",
	-- "              #                                                    (              ",
	-- "             ,             *%@%             .@@@@&*                 ,             ",
	-- "          *            /@@@@@@&            @@@@@@@@&                .*            ",
	-- "          ,            @@@@@@@@,   ...  .   .@@@@@@@@@                 /          ",
	-- "          /           @@@@@@/                  *&@@@@@&                           ",
	-- "         /           ,@&@@@.    %@@@@@@@@@,     .#@@@&&                 ,         ",
	-- "         #            (%%%/    *@@@@@@@@@%*      *&%#(*                 /         ",
	-- "         *        .     .           /                   , .,.                     ",
	-- "          .                /                     *                      *         ",
	-- "          *                #.    ./%,%/.      ,%                       /..        ",
	-- "          .,                                                        ,,*  *        ",
	-- "            %*                                 (%%#%%(,          *&*..    ,       ",
	-- "           ,/**#@%,**         ........ ...    #&&&@&&&%%%&(,#@@@@@&##%(%%#,,.     ",
	-- "          .%@@@@@@@@@@@@@@@@@@@@@@@&@@@@@@@@@(@@@@@@&&@@%&%%&&&#@@@@@@@@&&&%(,    ",
	-- "          (%@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@.@@@@@@@@@@@@@@@&&%&@%&@@@@@@@@@%#,   ",
	-- "        *&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/@@@@@@@@@@@@@@@@@@@@&%&&*&@@@@@@&&#.  ",
	-- "        &@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/@@@@@@@@@@@@@@@@@@@@@&@@@&&(@@@@@@&%* ",
	-- "      .#@@@@@@@@@@@@@@@@@@@@@@@@@@@&@@@%@@@(@@@@@@@@@@@@@@@@@@@@@@@@@&@@@@##@@@@#.",
	-- "      /@@@@@@@@@@@%%&%@&##%&#%/(@(&#%%###%&%@/@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&/",
	-- "     @@@@@@@@@@%((/((**,.,,,,*,,.,*.*.,*,,,,.. @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@/",
	-- "    .@@@@@@@@@/.*   .                           @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@(",
    -- },
    load_on_startup = true,
    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "✨  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "W  Find Word", "Spc f w", "Telescope live_grep" },
      { "  Bookmarks", "Spc m", "MarksListAll" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },
  statusline = {
    theme = "minimal",
    separator_style = "block",
  }
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
