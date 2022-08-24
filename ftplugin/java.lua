local config = {

cmd = {

"java",
"-Declipse.application=org.eclipse.jdt.ls.core.id1",
"-Dosgi.bundles.defaultStartLevel=4",
"-Declipse.product=org.eclipse.jdt.ls.core.product",
"-Dlog.protocol=true",
"-Dlog.level=ALL",
"-Xms1g",
"--add-modules=ALL-SYSTEM",
"--add-opens",
"java.base/java.util=ALL-UNNAMED",
"--add-opens",
"java.base/java.lang=ALL-UNNAMED",
"-jar",
"/Users/chenli/.local/share/nvim/lsp/jdt-language-server/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar",
"-configuration",
"/Users/chenli/.local/share/nvim/lsp/jdt-language-server/config_mac",
"-data",
"/Users/chenli/.local/share/nvim/lsp/jdt-language-server/workspace/folder"
},
root_dir = require("jdtls.setup").find_root({".git", "mvnw", "gradlew"}),
settings = {

java = {
}
},
init_options = {

bundles = {
}
}
}
require("jdtls").start_or_attach(config)
require("jdtls.setup").add_commands()
--
vim.keymap.set('n', '<leader>o', '<Cmd>lua require\'jdtls\'.organize_imports()<CR>')
vim.keymap.set('n', '<leader>f', '<Cmd>lua vim.lsp.buf.formatting()<CR>')
vim.keymap.set('n', 'crv', '<Cmd>lua require(\'jdtls\').extract_variable()<CR>')
vim.keymap.set('v', 'crv', '<Esc><Cmd>lua require(\'jdtls\').extract_variable(true)<CR>')
vim.keymap.set('n', 'crc', '<Cmd>require(\'jdtls\').extract_constant()<CR>')
vim.keymap.set('v', 'crc', '<Esc><Cmd>lua require(\'jdtls\').extract_constant(true)<CR>')
vim.keymap.set('v', 'crm', '<Esc><Cmd>lua require(\'jdtls\').extract_method(true)<CR>')
