--- @type vim.lsp.Config
return {
	cmd = { "fix", "language-server" },
	root_markers = { "fixproj.toml" },
	filetypes = { "fix" },
	workspace_required = false,
}
