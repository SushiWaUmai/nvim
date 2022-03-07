local status_ok, treesitter_config = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

treesitter_config.setup({
  ensure_installed = "maintained",
  sync_install = false,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = true,
  },
  context_commentstring = {
    enable = true
  }
})

local context_status_ok, context = pcall(require, "treesitter-context")
if not context_status_ok then
	return
end

context.setup{
    enable = false,
    throttle = true,
    max_lines = 0,
    patterns = {
  },
}
