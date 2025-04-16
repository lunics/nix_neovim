# Neovim configuration managed by Nixvim

This is the flake version of nixvim

## Import the flake into home-manager

<details>
  <summary>flake.nix</summary>
    ```
      {
        inputs = {
          unstable.url = "github:nixos/nixpkgs/nixos-unstable";
      
          home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "unstable"; };
     
          lunics-neovim.url = "github:lunics/nix_neovim";
            # or from a local path
          lunics-neovim.url = "git+file:/home/lunics/path/to/nix_neovim";
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
  <summary>home-manager_configuration.nix</summary>
    ```
      home.packages = with pkgs; [
        inputs.lunics-neovim.packages."${system}".default
      ];
    ```
</details>

## Find the plugin from the registry

Plugins covered by nixos: [link](https://github.com/NixOS/nixpkgs/blob/master/pkgs/applications/editors/vim/plugins/vim-plugin-names)

Via [nh](https://github.com/nix-community/nh) cli tool
```
nh search PLUGIN_NAME
```
