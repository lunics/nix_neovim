{ pkgs, ... }:{
  imports = [
    ./bufferline.nix
  ];

  plugins = {
    transparent.enable    = true;
    commentary.enable     = true;
    auto-save.enable      = true;
    nvim-surround.enable  = true;
    # toggleterm.nvim   manage multiple terminal windows
  };
  # extraConfigLua = "g:transparent_enabled"; KO


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
  extraPlugins = with pkgs.vimPlugins; [
    highlight-undo
  ];
  #  vim-nix
  #  {
  #    plugin = commen-nvim
  #    config = ''lua require("Comment").setup()'';
  #  }
  #];
  # or this for the configuration
  # extraConfigLua = "require('my-plugin').setup({foo = "bar"})";
}
