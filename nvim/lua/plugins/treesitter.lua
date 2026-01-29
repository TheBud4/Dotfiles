-- Syntax highlighting e parsing
return {
  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    main = "nvim-treesitter.configs", 
    opts = {
      ensure_installed = { 
        "lua", "vim", "vimdoc", "query", 
        "javascript", "typescript", "tsx", -- React Native
        "dart",                            -- Flutter
        "bash", "json",                    -- Shell e Configs
        "c", "cpp", "make",                -- Kernel e baixo nível
        "markdown", "markdown_inline",     -- Documentação
        "html", "css", "yaml"
      },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    },
  },
}