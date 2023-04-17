local status_ok, illuminate = pcall(require, "illuminate")
if not status_ok then
	return
end

illuminate.configure({
  delay = 120,
  filetypes_denylist = {
    "NvimTree",
    "alpha",
    "toggleterm",
    "TelescopePrompt",
  },
})

vim.api.nvim_set_hl(0, "IlluminatedWordText", { link = "Visual" })
vim.api.nvim_set_hl(0, "IlluminatedWordRead", { link = "Visual" })
vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { link = "Visual" })

