local colortheme = "iceberg"

require("config.immediate.theme.vscode")
require("config.immediate.theme.onedarkpro")

vim.cmd("colorscheme " .. colortheme)

-- vim.cmd([[
-- highlight Normal ctermbg=none
-- highlight NonText ctermbg=none
--
-- highlight Normal guibg=none
-- highlight NonText guibg=none
-- ]])
