local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
if not lspconfig_status_ok then
	return
end

return {
	file_types = { "gd", "gdscript", "gdscript3" },
	root_dir = lspconfig.util.root_pattern("project.godot", ".git"),
}
