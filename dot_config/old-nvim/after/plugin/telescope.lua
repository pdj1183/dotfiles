local telescope = require('telescope')
telescope.setup({
    -- Your telescope setup here...
    extensions = {
        whaler = {
            file_explorer = "nvimtree",
            -- file_explorer_config = {
                --     -- (OPTIONAL) Map to configure what command is triggered by which plugin. 
                --     -- For basic configuration this is done automatically setting up the file_explorer config.
                --     plugin_name = "nvimtree", -- Plugin. Should be installed.
                --     command = "Explorer", -- The plugin command to open.
                --     -- Command must accept a path as parameter
                --     prefix_dir = " ",     -- Prefix string to be appended after the command and before the directory path. 
                --     -- Example: In the `telescope_file_browser` the value is ` path=`.
                --     --          The final command is `Telescope file_browser path=/path/to/dir`.
                --     -- By default is " " (space)
                -- },
                -- Whaler configuration
                directories = {
                    -- { path = "/Users/phillipjohnson/Desktop/My Stuff/AOC23/", alias = "AOC23" },
                    { path = "/Users/phillipjohnson/GitHubStuff/", alias = "GitHub Stuff" },
                    -- { path = "/Users/phillipjohnson/Desktop/CSU/LastYearCSU/Second Semester/", alias = "Second Semester" },
                    -- { path = "/Users/phillipjohnson/OneDrive - Colostate/General - CompSci H-W Reverse Engineering/", alias = "Work One Drive" }
                    { path = "/Users/phillipjohnson/GitHubStuff/Projects/", alias = "Personal Projects"}
                },
                -- You may also add directories that will not be searched for subdirectories
                oneoff_directories = {
                    { path = "/Users/phillipjohnson/Desktop/CSU", alias = "CSU" },
                    { path = "/Users/phillipjohnson/.config/nvim", alias = "nvim" },
                }
            }
        }
    })


    -- More config here
    telescope.load_extension("whaler")
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<leader>ps', function() 
        builtin.grep_string({ search = vim.fn.input("Grep > ")});

    end)
    --
    vim.keymap.set("n", "<leader>pd", telescope.extensions.whaler.whaler)
