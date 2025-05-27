require("lualine").setup({
  options = {
    component_separators = { left = '|', right = '|' },
    section_separators = { left = '', right = '' },
    theme = "palenight",
  },

  sections = {
    lualine_c = {
      {
        "filename",
        path = 1,
        file_status = true,
        newfile_status = true,
        shorting_target = 70,
      },
    },
    lualine_x = {
      { "encoding" },
      { "fileformat" },
      {
        "filetype",
        colored = true,
        icon_only = true,
      },
    },
    lualine_y = {}
  },

  inactive_sections = {
    lualine_x = {},
    lualine_y = {}
  }
})

