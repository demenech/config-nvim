return {
	"nyoom-engineering/oxocarbon.nvim",
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
    -- {
    --     "gvlatko/inline-relative-numbers.nvim",
    --     config = function() require("inline-relative-numbers").setup {} end,
    --     event = "BufRead",
    -- },
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
        "MunifTanjim/prettier.nvim",
        config = function()
          require("plugins.prettier")
        end
    }
}
