# fix用lspプラグイン

関数型言語 [fix](https://github.com/tttmmmyyyy/fixlang) 用のlspプラグインです。

## 要件

- neovim 0.11以上
- `fix` コマンドが使用可能

## できること

- lspを使用する機能
	- 補完、警告など `fix language-server` にある機能が使えます
	- fixにはtree-sitterがありませんが、[1.4.0以降のlspはSemantic Tokenを扱える](https://github.com/tttmmmyyyy/fixlang/releases#release-v1.4.0) ため、Syntax highlightが有効です
- neovimのfiletypeを使用する機能
	- `fix` filetypeを追加するため、`ftplugin` などの機能が使用可能です

## 導入方法

1. `fix` コマンドを導入し、PATHを通す
2. neovimのプラグインとして `fix.nvim` を導入する

	```lua
	-- lazy.nvimの例
	return {
		{
			"ButterPeanuts/fix.nvim",
			-- 必要に応じてSHA Pinningを使用してください
			-- commit = "0000000000000000000000000000000000000000"
		}
	}
	```

## 動作確認

1. `.fix` ファイルを開く
2. `:checkhealth vim.lsp` コマンドで `fix_lsp` があるかどうかを確認
	- "vim.lsp: Active Clients" 節に "fix_lsp" がある
