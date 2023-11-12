local plugins = {

   {
      "mfussenegger/nvim-lint",
      event = "VeryLazy",
      config = function ()
      require "custom.configs.lint"
      end,
   },
   {
      "neovim/nvim-lspconfig",
      event = "VeryLazy",
      config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
      end,
   },
   {
      "williamboman/mason.nvim",
      opts = {
         ensure_installed = {
            "gopls",
            "gofumpt",
            "goimports",
            "golines",
            "gomodifytags",
            "clangd",
            "clang-format",
            "asm-lsp",
            "typescript-language-server",
            "eslint-lsp",
            "pyright",
            "rust_analyzer",
            "mypy",
            "ruff",
            "black",
            "lua-formatter",
         },
      },
   },
    {
      "jose-elias-alvarez/null-ls.nvim",
      event = "VeryLazy",
      ft = "go,c,cpp,lua,py",
      opts = function ()
      return require "custom.configs.null-ls"
      end,
    },
   {
      "olexsmir/gopher.nvim",
      ft = "go",
      config = function(_, opts)
      require("gopher").setup(opts)
      require("core.utils").load_mappings("gopher")
      end,
      build = function()
      vim.cmd [[silent! GoInstallDeps]]
      end,
   },
   {
      "zbirenbaum/copilot.lua",
      lazy = false,
      opts = function ()
      return require "custom.configs.copilot"
      end,
      config = function(_, opts)
      require("copilot").setup(opts)
      require("core.utils").load_mappings("copilot")
   end
},
{
   "folke/trouble.nvim",
   dependencies = "nvim-tree/nvim-web-devicons",
},
{
   "mbbill/undotree",
   lazy = false,
},
{
   "nvimdev/lspsaga.nvim",
   lazy = false,
   config = function ()
   require("lspsaga").setup({})
   require("core.utils").load_mappings("lspsaga")

   end,
},
{
   "folke/zen-mode.nvim",
   opts = {}
}

}


return plugins
