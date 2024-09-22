{ pkgs, ... }:{
  imports = [
    ./bufferline.nix
  ];

  # Not all plugins have modules, so install the others here
  #extraPlugins = with pkgs.vimPlugins; [
  #  vim-nix
  #  {
  #    plugin = commen-nvim
  #    config = ''lua require("Comment").setup()'';
  #  }
  #];
}
