{ pkgs, ... }:{
  imports = [
    ./bufferline.nix
  ];

  plugins = {
    transparent = {
      enable = true;
      config = "vim.g.transparent_enabled"; };
  };

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
