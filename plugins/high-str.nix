{ pkgs, ...}: {
  # https://github.com/pocco81/high-str.nvim
  # To create on fly highlighting

  ## CHANGE VALUES
  extraPlugins = with pkgs.vimUtils; [
    # nix-env -i nix-prefetch
    # nix-prefetch https://github.com/tzachar/highlight-undo.nvim
    (buildVimPlugin {
      pname = "highlight-undo.nvim";
      version  = "2024-05-06";
      src = pkgs.fetchFromGitHub {
        owner  = "tzachar";
        repo   = "highlight-undo.nvim";
        rev    = "1ea1c79372d7d93c88fd97543880927b7635e3d2";
        sha256 = "1lzml5yj3ak0rc4r2fmb1zpb9a01i5j6yk58m0qn960l2x5kav68"; }; }) ];
