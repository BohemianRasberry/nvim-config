-- Essential structure to make Emmet work
return {
  {
    "neovim/nvim-lspconfig",
    -- ...
    config = function()
      -- CRUCIAL: Load the required module
      local lspconfig = require("lspconfig")

      lspconfig.emmet_language_server.setup({
        -- Your filetypes here
        filetypes = {
          "html",
          "css",
          "javascript",
          "javascriptreact",
          "typescriptreact",
          "vue",
          "svelte",
          "less",
          "sass",
          "scss",
          "pug",
          "eruby", -- For Rails/Ruby
          "blade", -- For Laravel/PHP
        },
        -- ...
      })
      -- ...
    end,
  },
}
