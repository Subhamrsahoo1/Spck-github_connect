local mapkey = require("util.keymapper").mapvimkey

local M = {}

M.on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true, buffer = bufnr }

	mapkey("fd", "Lspsaga finder", "n", opts) -- go to definition
	mapkey("gd", "Lspsaga peek_definition", "n", opts) -- peak definition
	mapkey("gD", "Lspsaga goto_definition", "n", opts) -- go to definition
	mapkey("ca", "Lspsaga code_action", "n", opts) -- see available code actions
	mapkey("rn", "Lspsaga rename", "n", opts) -- smart rename
	mapkey("D", "Lspsaga show_line_diagnostics", "n", opts) -- show  diagnostics for line
	mapkey("d", "Lspsaga show_cursor_diagnostics", "n", opts) -- show diagnostics for cursor
	mapkey("pd", "Lspsaga diagnostic_jump_prev", "n", opts) -- jump to prev diagnostic in buffer
	mapkey("nd", "Lspsaga diagnostic_jump_next", "n", opts) -- jump to next diagnostic in buffer
	mapkey("K", "Lspsaga hover_doc", "n", opts) -- show documentation for what is under cursor

	if client.name == "pyright" then
		mapkey("oi", "PyrightOrganizeImports", "n", opts) -- organise imports
		mapkey("db", "DapToggleBreakpoint", "n", opts) -- toggle breakpoint
		mapkey("dr", "DapContinue", "n", opts) -- continue/invoke debugger
		mapkey("dt", "lua require('dap-python').test_method()", "n", opts) -- run tests
	end

	if client.name == "tsserver" then
		mapkey("oi", "TypeScriptOrganizeImports", "n", opts) -- organise imports
	end
end

M.typescript_organise_imports = {
	description = "Organise Imports",
	function()
		local params = {
			command = "_typescript.organizeImports",
			arguments = { vim.fn.expand("%:p") },
		}
		-- reorganise imports
		vim.lsp.buf.execute_command(params)
	end,
}

return M
