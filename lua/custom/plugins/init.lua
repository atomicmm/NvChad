local M = {
  -- ai-codeium with neovim
  --{
  --  "Exafunction/codeium.vim",
  --  event = "BufEnter",
  --  config = function()
      -- 默认的tab补全会被原生的下拉菜单覆盖，这里改成自定义的Ctrl+G
  --    vim.keymap.set("i", "<C-g>", function() return vim.fn["codeium#Accept"]() end, { expr = true })
  --  end
  --},
  -- 自动安装lsp
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        -- webdev
        "html-lsp",
        "prettier",
        "tsserver",
        "tailwindcss",
        "typescript",
        "emmet_ls",

        -- others
        "sqlls",
      }
    }
  },
  -- lsp
  -- pnpm i -g typescript-language-server typescript sql-language-server prettier cspell
  {
    "neovim/nvim-lspconfig",
    dependencies = {
     "jose-elias-alvarez/null-ls.nvim",
      config = function ()
        require "custom.plugins.null-ls"
      end
    },
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },
  -- 快捷移动
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    -- @type Flash.Config
    opts = {},
  },
  -- 持久化工作区
  {
    "folke/persistence.nvim",
    -- Restore last session of current dir
    lazy = true,
    event = "BufReadPre", -- this will only start session saving when an actual file was opened
    config = function()
      -- session 文件存储在~/.config/nvim/session
      require("persistence").setup({
        dir = vim.fn.expand(vim.fn.stdpath("config") .. "/session/"),
        options = { "buffers", "curdir", "tabpages", "winsize" },
        pre_save = nil,
      })
    end,
  },
  -- 语法高亮
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",

        -- others
        "sql",
        "bash",
        "ssh_config"

      },
    },
  },
}

return M
