local is_not_executable_notified = false
return {
	--- fixを実行可能か検証する
	--- @return boolean is_executable fixを実行可能か
	check_executable = function()
		return vim.fn.executable("fix") == 1
	end,

	--- fixが実行不可能であることを通知する
	warn_not_installed = function()
		if not is_not_executable_notified then
			is_not_executable_notified = true
			vim.notify("There is no `fix` on $PATH", vim.log.levels.WARN, { title = "fix.nvim" })
		end
	end,
}
