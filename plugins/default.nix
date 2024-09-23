{ pkgs, ... }:{
  imports = [
    ./bufferline.nix
  ];

  plugins.transparent.enable = true;
  extraConfigLua = "vim.g.transparent_enabled";

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
  #extraPlugins = with pkgs.vimPlugins; [
  #  vim-nix
  #  {
  #    plugin = commen-nvim
  #    config = ''lua require("Comment").setup()'';
  #  }
  #];
  # or this for the configuration
  # extraConfigLua = "require('my-plugin').setup({foo = "bar"})";
}
