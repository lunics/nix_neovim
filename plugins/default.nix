{ pkgs, inputs, ... }:{

  imports = [
    ./bufferline.nix
    ./highlight-undo.nix
    ./lualine.nix
    ./transparent.nix
    # ./telescope.nix
    ./fzf-lua.nix
    # ./yazi.nix
    ./lazygit.nix
    ./better-escape.nix
    # ./trim.nix
    ./auto-session.nix
    ./flash.nix
  ];

  plugins = {
    commentary.enable     = true;
    auto-save.enable      = true;
    nvim-surround.enable  = true;
    spider.enable         = true;   # ?
    numbertoggle.enable   = true;   # turn off relative number when buffer not focused
  };

  # { 'nvim-tree/nvim-web-devicons', },
  # { 'tpope/vim-abolish', },
  # { 'svban/YankAssassin.vim', },
  #   'nacro90/numb.nvim',
  # { 'tommcdo/vim-exchange', },
  # { 'jghauser/mkdir.nvim', },
  #   'ahmedkhalf/project.nvim',
  #   'willothy/flatten.nvim',
  #   'kana/vim-textobj-line',
  #   treesitter
  # https://github.com/akinsho/git-conflict.nvim/
  # folke/which-key.nvim',
  # toggleterm.nvim   manage multiple terminal windows
  # https://github.com/nat-418/boole.nvim
  # https://github.com/gerazov/toggle-bool.nvim
}
