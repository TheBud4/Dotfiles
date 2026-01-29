-- Plugins de edição e produtividade
return {
  -- Adicione seus plugins de editor aqui
{
    "folke/which-key.nvim",
    event = "VeryLazy",
    config = function()
      require("which-key").setup()
    end,
},

}
