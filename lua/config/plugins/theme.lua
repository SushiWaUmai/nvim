local plugins = {
  -- transparent
  transparent = {
    "xiyaowong/nvim-transparent",
  },
  -- vscode color theme
  vscode = {
    "Mofiqul/vscode.nvim",
  },
  -- onedarkpro color theme
  onedarkpro = {
    "olimorris/onedarkpro.nvim",
  },
  -- nord color theme
  nord = {
    "nordtheme/vim",
    lazy = false,
    priority = 1000,
  },
  dracula = { "Mofiqul/dracula.nvim" }, -- dracula color theme
  "cocopon/iceberg.vim",                -- iceberg color theme
}

return require("config.utils").extendPlugins(plugins, "config.options.theme")
