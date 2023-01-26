local lsp = require("lsp-zero")
lsp.preset("recommended")

lsp.configure("tsserver", {
	on_init = function(client)
		client.server_capabilities.documentFormattingProvider = false
		client.server_capabilities.documentFormattingRangeProvider = false
	end,
})

lsp.setup()

local null_ls = require("null-ls")

null_ls.setup({
	sources = {
		null_ls.builtins.formatting.prettier,
	},
})
