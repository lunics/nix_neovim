# Neovim configuration managed by Nixvim

Official **nixvim** project: [link](https://github.com/nix-community/nixvim)

## Import the flake into home-manager

<details>
<summary>flake.nix</summary>

```nix
{
  inputs = {
    unstable.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "unstable"; };

    my-neovim.url = "github:lunics/nix_neovim";
    # my-neovim.url = "git+file:/home/username/path/to/nix_neovim";         # or from a local path
  };

  outputs = { self, ... } @ inputs:
  let
    system = "x86_64-linux";
  in {
    homeConfigurations.lunics = inputs.home-manager.lib.homeManagerConfiguration {
      pkgs = import inputs.unstable {
        inherit system;
        config.allowUnfree = true;
      };

      extraSpecialArgs = { inherit inputs; };

      modules = [
        ./default.nix
      ];
    };
  };
}
```
</details>

<details>
<summary>default.nix</summary>

```nix
home.packages = with pkgs; [
  inputs.my-neovim.packages."${system}".default
];
```
</details>

## How to find the plugin you need

Plugins covered by nixos: [link](https://github.com/NixOS/nixpkgs/blob/master/pkgs/applications/editors/vim/plugins/vim-plugin-names)

Via [nh](https://github.com/nix-community/nh) cli tool:
```sh
nh search <PLUGIN_NAME>
```
