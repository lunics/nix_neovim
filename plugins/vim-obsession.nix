{ pkgs, ...}: {
  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname    = "vim-obsession";
      version  = "2024-12-07";
      src      = pkgs.fetchFromGitHub {
        owner  = "tpope";
        repo   = "vim-obsession";
        rev    = "ed9dfc7c2cc917ace8b24f4f9f80a91e05614b63";
        sha256 = "sha256-+7lj2Tbv5V4El54pSfFlu8jq6Rz6Pz+EIsg9DwXuADU=";
      }; }) ];
}
