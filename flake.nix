# git clone -b neovim lunics.fr:~/nixos /home/lunics/neovim
# nix run .                     install and run neovim
# nix run /home/lunics/neovim   open neovim from a separate git clone
{
  inputs = {
    nixpkgs.url     = "github:nixos/nixpkgs/nixos-unstable";
    nixvim.url      = "github:nix-community/nixvim";
    flake-parts.url = "github:hercules-ci/flake-parts"; };  # ?

  outputs =
    { nixvim, flake-parts, ... }@inputs:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux" ];

      perSystem =
        { pkgs, system, ... }:
        let
          nixvimLib    = nixvim.lib.${system};
          nixvim'      = nixvim.legacyPackages.${system};
          nixvimModule = {
            inherit pkgs;
            module = import ./config; # import the module directly
            extraSpecialArgs = {
              # inherit (inputs) foo;
            };
          };
          nvim = nixvim'.makeNixvimWithModule nixvimModule;
        in
        {
          checks = {
            default = nixvimLib.check.mkTestDerivationFromNixvimModule nixvimModule;
          };
          packages = {
            default = nvim;
          };
        };
    };
}
