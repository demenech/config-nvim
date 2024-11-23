return {
	"nyoom-engineering/oxocarbon.nvim",
    {
      'stevearc/dressing.nvim',
      opts = {},
    },
    {
        "christoomey/vim-tmux-navigator",
        cmd = {
            "TmuxNavigateLeft",
            "TmuxNavigateDown",
            "TmuxNavigateUp",
            "TmuxNavigateRight",
            "TmuxNavigatePrevious",
        },
        keys = {
            { "<c-h>", "<cmd><C-U>TmuxNavigateLeft<cr>" },
            { "<c-j>", "<cmd><C-U>TmuxNavigateDown<cr>" },
            { "<c-k>", "<cmd><C-U>TmuxNavigateUp<cr>" },
            { "<c-l>", "<cmd><C-U>TmuxNavigateRight<cr>" },
            { "<c-\\>", "<cmd><C-U>TmuxNavigatePrevious<cr>" },
        },
    },
	{
		'windwp/nvim-autopairs',
	  	event = "InsertEnter",
	  	opts = {} -- this is equalent to setup({}) function
      	}, 
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
	    dependencies = { 'nvim-lua/plenary.nvim' },
        config = function() 
          require("plugins.telescope")
        end
	},
    {
	    "nvim-treesitter/nvim-treesitter",
	    build = ":TSUpdate",
        config = function() 
          require("plugins.treesitter")
        end
    },
    {
        'numToStr/Comment.nvim',
        opts = {
       },
        lazy = false,
    },
    {
        'akinsho/bufferline.nvim',
        version = "*",
        dependencies = 'nvim-tree/nvim-web-devicons',
        config = function() 
          require("plugins.bufferline")
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function() 
          require("plugins.lualine")
        end
    },
    { 
        "nvim-tree/nvim-tree.lua",
        version = "*",
        lazy = false,
        dependencies = {
          "nvim-tree/nvim-web-devicons",
        },
        config = function()
          require("plugins.tree")
        end,
    },
    {
        "gvlatko/inline-relative-numbers.nvim",
        config = function() require("inline-relative-numbers").setup {} end,
        event = "BufRead",
    },
    {
        "folke/todo-comments.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        opts = {
        }
    },
    {
        'gelguy/wilder.nvim',
        config = function()
          require("plugins.wilder")
        end

    },
    {
        'andymass/vim-matchup',
        config = function()
          -- may set any options here
          vim.g.matchup_matchparen_offscreen = { method = "popup" }
        end
    },
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },
    -- LSP
    {
        "neovim/nvim-lspconfig"
    },
    {
        "williamboman/mason.nvim"
    },
    {
        "williamboman/mason-lspconfig.nvim",
    },
    {
        "hrsh7th/nvim-cmp"
    },
    {
        "hrsh7th/cmp-nvim-lsp"
    },
    {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require("plugins.null-ls")
        end
    },
    {
	"L3MON4D3/LuaSnip",
        -- follow latest release.
        version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- install jsregexp (optional!).
        build = "make install_jsregexp"
    },
    {
	    "tpope/vim-fugitive",
    }
}
