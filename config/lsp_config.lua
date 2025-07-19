vim.lsp.set_log_level("debug")
local lspconfig = require('lspconfig')

-- lua language server config
lspconfig.lua_ls.setup {
  on_init = function(client)
    if client.workspace_folders then
      local path = client.workspace_folders[1].name
      if vim.loop.fs_stat(path .. '/.luarc.json') or vim.loop.fs_stat(path .. '/.luarc.jsonc') then
        return
      end
    end

    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
      runtime = {
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT'
      },
      -- Make the server aware of Neovim runtime files
      workspace = {
        checkThirdParty = false,
        library = {
          vim.env.VIMRUNTIME
          -- Depending on the usage, you might want to add additional paths here.
          -- "${3rd}/luv/library"
          -- "${3rd}/busted/library",
        }
        -- or pull in all of 'runtimepath'. NOTE: this is a lot slower
        -- library = vim.api.nvim_get_runtime_file("", true)
      }
    })
  end,
  settings = {
    Lua = {}
  }
}

-- vimls configuration
lspconfig.vimls.setup({
  cmd = { "vim-language-server", "--stdio" },
  filetypes = { "vim" },
  root_dir = lspconfig.util.root_pattern(".git", "autoload", "plugin"),
  settings = {
    vimls = {
      isNeovim = true,
      iskeyword = "@,48-57,_,192-255,-#",
      vimruntime = "",
      runtimepath = "",
      diagnostic = { enable = true },
      indexes = {
        runtimepath = true,
        gap = 100,
        count = 3,
        projectRootPatterns = { ".git", "autoload", "plugin" }
      },
      suggest = {
        fromVimruntime = true,
        fromRuntimepath = false
      }
    }
  }
})

-- Snippet to enable the clangd language server:
lspconfig.clangd.setup({
  cmd = { "clangd", "--background-index", "--clang-tidy" },
  filetypes = { "c", "cpp", "objc", "objcpp" },
  root_dir = lspconfig.util.root_pattern(
    '.clangd',
    '.clang-tidy',
    '.clang-format',
    'compile_commands.json',
    'compile_flags.txt',
    'configure.ac',
    '.git'
  ),
  capabilities = vim.tbl_extend(
    "keep",
    vim.lsp.protocol.make_client_capabilities(),
    { offsetEncoding = { "utf-8" } }
  )
})

-- cmake language server config
lspconfig.cmake.setup({
  cmd = { "cmake-language-server" },
  filetypes = { "cmake" },
  init_options = {
    buildDirectory = "build"
  },
  root_dir = lspconfig.util.root_pattern(
    'CMakePresets.json',
    'CTestConfig.cmake',
    '.git',
    'build',
    'cmake'
  ),
})

-- js/ts language server config
lspconfig.ts_ls.setup({
  cmd = { "typescrip-language-server", "--sdio" },
  filetypes = { "javascript", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
  init_options = {
    hostInfo = "neovim"
  },
  root_dir = lspconfig.util.root_pattern("tsconfig.json", "jsconfig.json", "package.json", ".git"),
})

-- pylsp config
lspconfig.pylsp.setup({
  cmd = { "pyslsp" },
  filetypes = { "python" },
  root_dir = lspconfig.util.root_pattern(
    'pyproject.toml',
    'setup.py',
    'setup.cfg',
    'requirements.txt',
    'Pipfile',
    '.git'
  ),
  settings = {
    pylsp = {
      plugins = {
        -- pycodestyle = {
        --   ignore = { 'W391' },
        --   maxLineLength = 100
        -- },
        -- autopep8 = { enabled = false },
        -- black = { enabled = true },
      }
    }
  }
})
