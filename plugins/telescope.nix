{
  # https://github.com/nvim-telescope/telescope.nvim/

  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native.enable   = true;
      media-files.enable  = true;
      ui-select.enable    = true;
      file-browser.enable = true;
      frecency.enable     = true;
      manix.enable        = true;
      undo.enable         = true;
    };
  };

  # Optional dependencies
  # sharkdp/fd (finder)
  # nvim-treesitter/nvim-treesitter (finder/preview)
  # neovim LSP (picker)
  # devicons (icons

  extraConfigLua = ''
    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>f',  builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep,  { desc = 'Telescope live grep'  })
    vim.keymap.set('n', '<leader>fb', builtin.buffers,    { desc = 'Telescope buffers'    })
    vim.keymap.set('n', '<leader>fh', builtin.help_tags,  { desc = 'Telescope help tags'  })

    local actions = require("telescope.actions")
    local action_layout = require("telescope.actions.layout")
      -- KO ["<M-p>"] = action_layout.toggle_preview

    require('telescope').setup {
      defaults = {
        mappings = {
          i = {
            ["<esc>"] = actions.close,   -- esc for direct exiting finder
            ["<C-c>"] = actions.close,
            ["<C-j>"] = actions.cycle_history_next,   -- KO
            ["<C-k>"] = actions.cycle_history_prev,   -- KO
            ["<C-u>"] = false,           -- clear prompt
          },
          n = {
          },
        },
        previewer = true,
        layout_strategy = "flex",
      },
      pickers = {
      },
      extensions = {
        fzf = {
          fuzzy = true,                    -- false will only do exact matching
          override_generic_sorter = true,  -- override the generic sorter
          override_file_sorter = true,     -- override the file sorter
          case_mode = "smart_case",        -- ignore_case, respect_case, smart_case
        }
      }
    }
    require('telescope').load_extension('fzf')
  '';
}
