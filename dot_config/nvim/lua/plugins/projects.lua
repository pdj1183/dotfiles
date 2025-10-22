-- lua/plugins/projects.lua
return {
  -- Project root detection + Telescope integration
  {
    "ahmedkhalf/project.nvim",
    event = "VeryLazy",
    opts = {
      -- Adjust patterns to your repos; these work well for JS/TS/Node/Go/Rust/etc.
      patterns = { ".git", ".github", "package.json", "pyproject.toml", "go.mod", "Cargo.toml", "Makefile" },
      detection_methods = { "pattern", "lsp" },
      manual_mode = false, -- auto-detect
      exclude_dirs = { "~/.local/*", "/tmp/*" },
      silent_chdir = true,
      datapath = vim.fn.stdpath("data"),
    },
    config = function(_, opts)
      require("project_nvim").setup(opts)
      -- Load Telescope extension
      pcall(require("telescope").load_extension, "projects")
    end,
    keys = {
      -- Open the project list
      {
        "<leader>pp",
        function()
          require("telescope").extensions.projects.projects()
        end,
        desc = "Projects",
      },
      -- Add current dir to known projects (writes to data/projects)
      { "<leader>pA", "<cmd>ProjectRoot add<cr>", desc = "Add Current Dir to Projects" },
    },
  },
}
