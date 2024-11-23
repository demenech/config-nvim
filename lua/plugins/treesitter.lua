require 'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "tsx",
    "typescript",
    "javascript",
    "html",
    "css",
    "gitcommit",
    "json",
    "lua"
  },
  sync_install = false,
  highlight = {
    enable = true 
  },
  indent = {
    enable = false  
  }
}
