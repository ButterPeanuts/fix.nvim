if not require("fix_nvim").check_executable() then
	require("fix_nvim").warn_not_installed()
	return
end

vim.lsp.enable("fix_lsp")
