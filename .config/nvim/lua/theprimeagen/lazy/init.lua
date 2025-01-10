return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require('copilot').setup({
        panel = {
          enabled = false,
          -- auto_refresh = false,
          -- keymap = {
          --   jump_prev = "<C-n>",
          --   jump_next = "<C-p>",
          --   accept = "<C-y>",
          --   refresh = "gr",
          --   open = "<leader>ocp"
          -- },
          -- layout = {
          --   position = "bottom", -- | top | left | right
          --   ratio = 0.4
          -- },
        },
        suggestion = {
          enabled = false,
          -- auto_trigger = false,
          -- hide_during_completion = true,
          -- debounce = 75,
          -- keymap = {
          --   accept = "<C-y>",
          --   accept_word = false,
          --   accept_line = false,
          --   next = "<C-]>",
          --   prev = "<C-[>",
          --   dismiss = "<C-c>",
          -- },
        },
        filetypes = {
          yaml = true,
          markdown = true,
          help = false,
          gitcommit = false,
          gitrebase = false,
          hgcommit = false,
          svn = false,
          cvs = false,
          ["."] = true,
        },
        copilot_node_command = 'node', -- Node.js version must be > 18.x
        server_opts_overrides = {},
      })
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  -- {
  --   "ThePrimeagen/harpoon",
  --   branch = "harpoon2",
  --   dependencies = { "nvim-lua/plenary.nvim" },
  -- },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
  },
  -- { 'lewis6991/gitsigns.nvim',                  requires = { 'nvim-lua/plenary.nvim' } },
  { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  {
    "3rd/image.nvim",
    config = function()
      -- ...
    end
  },
  {
    "nvim-lua/plenary.nvim",
    name = "plenary"
  },
  {
    "lewis6991/gitsigns.nvim",
    --event = "LazyFile",
    opts = {
      signs = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "" },
        topdelete = { text = "" },
        changedelete = { text = "▎" },
        untracked = { text = "▎" },
      },
      signs_staged = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "" },
        topdelete = { text = "" },
        changedelete = { text = "▎" },
      },
    },
  },
  {
    "giusgad/pets.nvim",
    dependencies = { "MunifTanjim/nui.nvim", "giusgad/hologram.nvim" },
    config = function()
      require('pets').setup {}
    end,
  }
}
