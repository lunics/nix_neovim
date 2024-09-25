{
  imports = [
    ../plugins
    ../autocmds
    ./options.nix
    ./keymaps.nix
  ];

  package = pkgs.neovim-nightly;    # force nixvim to use the nightly version
}
