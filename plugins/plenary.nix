{ pkgs, ...}: {
  # All the lua functions I don't want to write twice

  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname    = "plenary.nvim";
      version  = "2024-12-06";
      src      = pkgs.fetchFromGitHub {
        owner  = "nvim-lua";
        repo   = "plenary.nvim";
        rev    = "2d9b06177a975543726ce5c73fca176cedbffe9d";
        sha256 = "sha256-bmmPekAvuBvLQmrnnX0n+FRBqfVxBsObhxIEkDGAla4=";
      }; }) ];
}
