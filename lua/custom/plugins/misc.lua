return {
  {
    'f-person/git-blame.nvim',
    event = "VeryLazy",
  },
  {
    'stevearc/oil.nvim',
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup({})
      vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    end
  },
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-neotest/neotest-go"
    },
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require('catppuccin').setup({
        flavour = "mocha",
        transparent_background = true,
      })
      -- vim.cmd.colorscheme("catppuccin-mocha")
    end,
  },
  {
    {
      'sainnhe/edge',
      -- opts = function ()
      --   require('edge').style =
      -- end
      config = function()
        -- require('edge').setup({
        --   transparent_background = 1,
        --   better_performance = 1,
        -- })
        vim.cmd "let g:edge_transparent_background = 1"
        vim.cmd "let g:edge_better_performance = 1"
        vim.cmd.colorscheme("edge")
      end

    },
  },
  { 'akinsho/toggleterm.nvim', version = "*", config = true },
  { "ellisonleao/glow.nvim",   config = true, cmd = "Glow" },
  {
    "ray-x/go.nvim",
    dependencies = { -- optional packages
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = { "CmdlineEnter" },
    ft = { "go", 'gomod' },
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
  },
  {
    'mrcjkb/haskell-tools.nvim',
    enabled = false,
    version = '^3', -- Recommended
    ft = { 'haskell', 'lhaskell', 'cabal', 'cabalproject' },
  },
  {
    "zbirenbaum/copilot-cmp",
    enabled = false,
    config = function()
      require("copilot_cmp").setup()
    end
  },
  {
    'ThePrimeagen/git-worktree.nvim',
    config = function()
      require('telescope').load_extension("git_worktree")

      vim.keymap.set('n', '<leader>gt', function()
        require('telescope').extensions.git_worktree.git_worktrees()
      end, { desc = '[g]it [w]orktree, switch between them' })
    end
  }
}
