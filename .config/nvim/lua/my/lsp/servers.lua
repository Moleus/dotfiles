local pyright = {
    flags = {
        allow_incremental_sync = true,
    },
    single_file_support = true,
    settings = {
        -- pyright = { completeFunctionParens = true },
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "workspace",
                useLibraryCodeForTypes = true,
                -- stubsPath = "$HOME/typings"
            },
        },
    },
}

local vimls = {}

local texlab = {
    settings = {
        texlab = {
            build = {
                args = {
                    "-xelatex",
                    "-verbose",
                    "-file-line-error",
                    "-synctex=1",
                    "-interaction=nonstopmode",
                    "%f",
                },
                executable = "latexmk",
                forwardSearchAfter = true,
            },
            chktex = {
                onOpenAndSave = true,
            },
            forwardSearch = {
                args = { "%l", "%p", "%f" },
                executable = "/Applications/Skim.app/Contents/SharedSupport/displayline",
            },
        },
    },
}

local sumneko_binary_path = vim.fn.exepath('lua-language-server')
local sumneko_root_path = vim.fn.fnamemodify(sumneko_binary_path, ':h:h:h')

local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

local sumneko_lua = {
  cmd = {sumneko_binary_path, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        version = 'LuaJIT',
        path = runtime_path,
      },
      completion = {enable = true, callSnippet = "Both"},
      diagnostics = {
        enable = true,
        globals = { "vim", "describe", "it", "before_each", "after_each" },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- workspace = {
      --   library = {
      --     [vim.fn.expand("$VIMRUNTIME/lua")] = true,
      --     [vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
      --   }
      -- },
      telemetry = {
        enable = false,
      },
    },
  }
}

local configs = {}

configs.pyright = pyright
configs.vimls = vimls
-- servers.efm = efm
configs.texlab = texlab
configs.nvim_treesitter = nvim_treesitter
configs.sumneko_lua = sumneko_lua
-- configs.sumneko_lua = sumneko_lua
-- configs.jsonls = jsonls

return configs
