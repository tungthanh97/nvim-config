local M = {}

-- Auto-install

local lsp_installer_servers = require'nvim-lsp-installer.servers'

local ok, solargraph = lsp_installer_servers.get_server("solargraph")
if ok then
    if not solargraph:is_installed() then
        solargraph:install()
    end
end



-- Settings

-- Enable (broadcasting) snippet capability for completion
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
capabilities.textDocument.completion.completionItem.snippetSupport = true

M.capabilities = capabilities
M.settings = {}

return M
