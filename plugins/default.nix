{ pkgs, inputs, ... }:{

  # { 'nvim-tree/nvim-web-devicons', },
  # { 'tpope/vim-abolish', },
  # { 'svban/YankAssassin.vim', },
  # yanky
  #   'nacro90/numb.nvim',
  # { 'tommcdo/vim-exchange', },
  # { 'jghauser/mkdir.nvim', },
  #   'ahmedkhalf/project.nvim',
  #   'willothy/flatten.nvim',
  #   'kana/vim-textobj-line',
  #   treesitter

  imports = [
    ./bufferline.nix
    ./highlight-undo.nix
    ./lualine.nix
    ./transparent.nix
  ];

  plugins = {
    commentary.enable     = true;
    auto-save.enable      = true;
    nvim-surround.enable  = true;
    spider.enable         = true;
    # toggleterm.nvim   manage multiple terminal windows
    numbertoggle.enable = true;     # turn off relative number when buffer not focused
  };

  # extraPackages = with pkgs; [
  #   marksman
  #   (nerdfonts.override {
  #     fonts = [
  #       "JetBrainsMono"
  #       "RobotoMono"
  #     ];
  #   })
  # ];

  # Not all plugins have modules, so install the others here
  # extraPlugins = with pkgs.vimPlugins; [
  # ];
  #  vim-nix
  #  {
  #    plugin = commen-nvim
  #    config = ''lua require("Comment").setup()'';
  #  }
  #];
  # or this for the configuration
  # extraConfigLua = "require('my-plugin').setup({foo = "bar"})";
}
