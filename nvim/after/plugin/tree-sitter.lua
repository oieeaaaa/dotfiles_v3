require('nvim-ts-autotag').setup()

require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {
    "help",
    "javascript",
    "typescript",
    "c",
    "lua",
    "rust",
    "tsx",
    "css",
    "json",
    "svelte",
  },

  auto_install = true,

  highlight = {
    enable = true,

    -- Disable highlighting for files larger than 100 KB
    disable = function(lang, buf)
        local max_filesize = 100 * 1024 -- 100 KB
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    additional_vim_regex_highlighting = false,
  },

  indent = {
    enable = true,
  },

  -- TODO: fix this auto close in react not working properly
  autotag = {
    enable = true,
    filetypes = {
      "html",
      "javascript",
      "typescript",
      "go"
    },
  }
}
