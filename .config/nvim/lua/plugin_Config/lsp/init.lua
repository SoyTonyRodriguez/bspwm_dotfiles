local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require("plugin_Config.lsp.mason")
require("plugin_Config.lsp.handlers").setup()
require("plugin_Config.lsp.null-ls")

require("plugin_Config.lsp.settings.emmet")
