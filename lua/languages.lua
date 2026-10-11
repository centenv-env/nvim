-- [[ Language Components ]] --
-- Uncommment what is needed

local M = {}

-- As of 0.11+ there is native OOTB for LSP management

-- List of all LSPs
M.lsps = {
  "bashls",
  "clangd",
  "cssls",
  "docker_compose_language_service",
  "dockerls",
  "gopls",
  "gh_actions_ls",
  "gitlab_ci_ls",
  "jdtls",
  "jsonls",
  "lua_ls",
  "pyright",
  "postgres_lsp",
  "prismals",
  "rust_analyzer",
  "svelte",
  "tailwindcss",
  "ts_ls",
  "yamlls",
}
vim.lsp.enable(M.lsps)

-- Pass capabilities to blink.cmp so completion with blink.cmp can work
vim.lsp.config("*", {
  capabilities = require("blink.cmp").get_lsp_capabilities(),
})

return M


-- DEPRECATED!!! ---

-- Names via nvim-lspconfig

-- All LSPs to be installed by Mason
-- M.ensure_installed = {
  -- LSPs
  -- "biome",
  -- "css_variables",
  -- "eslint",
  -- "marksman",

  -- DAPs (TODO: Add)

  -- Linters
  -- "biome",
  -- "eslint_d"

  -- Formatters
  -- "prettier"
-- }

-- LSPs --
-- function M.load_languages()
--   local dapui = require("dapui")
--   dapui.setup()
--
--   -- Enable all Mason identifiers
--   for _, lsp_identifier in ipairs(M.ensure_installed) do
--     vim.lsp.enable(lsp_identifier)
--   end
-- end
--
-- -- Language Specific Plugins --
-- function M.load_langspec()
--   require("lazy").setup({
--     require("plugins.langspec.nvim-java")
--   })
-- end


-- DAPs --
-- M.ensure_installed_dap = {
  -- "codelldb",
  -- "cppdbg",
  -- "javadbg",
  -- "python",
-- }

-- M.dap_lang_plugins = {
--   { "mfussenegger/nvim-dap-python" },
-- }
--
-- function M.load_dap_configs()
--   require("dap-python").setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")
-- end


-- Linters --
-- Reference: https://github.com/mfussenegger/nvim-lint?tab=readme-ov-file#available-linters
-- function M.load_linters()
--   require("lint").linters_by_ft = {
--     javascript = { "biomejs" },
--     javascriptreact = { "biomejs" },
--     typescript = { "biomejs" },
--     typescriptreact = { "biomejs" },
--   }
-- end
--
--
-- -- Formatters --
-- function M.load_formatters()
--   require("conform").setup({
--     formatters_by_ft = {
--       javascript = { "prettier", "biome" },
--       -- javascriptreact = { "prettier" },
--       typescript = { "prettier", "biome" },
--       -- typescriptreact = { "prettier" },
--     }
--   })
-- end

-- M.default_parsers = {
  -- 'bash',
  -- 'c',
  -- 'diff',
  -- 'html',
  -- 'lua',
  -- 'luadoc',
  -- 'markdown',
-- }

-- return M

-- DEPRECATED!!! ---
