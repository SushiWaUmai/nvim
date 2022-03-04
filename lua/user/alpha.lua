local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local fn = vim.fn

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
 "  ███╗░░██╗███████╗░█████╗░██╗░░░██╗██╗███╗░░░███╗  ",
 "  ████╗░██║██╔════╝██╔══██╗██║░░░██║██║████╗░████║  ",
 "  ██╔██╗██║█████╗░░██║░░██║╚██╗░██╔╝██║██╔████╔██║  ",
 "  ██║╚████║██╔══╝░░██║░░██║░╚████╔╝░██║██║╚██╔╝██║  ",
 "  ██║░╚███║███████╗╚█████╔╝░░╚██╔╝░░██║██║░╚═╝░██║  ",
 "  ╚═╝░░╚══╝╚══════╝░╚════╝░░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝  ",
}

dashboard.section.buttons.val = {
  dashboard.button("e", "New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("b", "Browse Folder", ":NvimTreeToggle<CR>"),
  dashboard.button("c", "Config", ":e " .. fn.stdpath("config") .. "/init.lua <CR>"),
  dashboard.button("p", "Update Packages", ":PackerSync <CR>"),
  dashboard.button("h", "Check Health", ":checkhealth <CR>"),
  dashboard.button("q", "Quit", ":qa<CR>"),
}
local function footer()
  return "https://github.com/SushiWaUmai"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true

alpha.setup(dashboard.opts)