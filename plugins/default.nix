{ pkgs, ... }:{
  imports = [
    ./bufferline.nix
  ];

  plugins = {
    transparent.enable    = true;
    commentary.enable     = true;
    auto-save.enable      = true;
    nvim-surround.enable  = true;
    # toggleterm.nvim   manage multiple terminal windows
  };
  # extraConfigLua = "g:transparent_enabled"; KO


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
  extraPlugins = with pkgs.vimPlugins; [
    # nix-env -i nix-prefetch
    # nix-prefetch https://github.com/tzachar/highlight-undo.nvim
    (pkgs.vimUtils.buildVimPlugin {
      pname    = "highlight-undo.nvim";
      version  = "2024-05-06";
      src = pkgs.fetchFromGitHub {
        owner  = "tzachar";
        repo   = "highlight-undo.nvim";
        rev    = "1ea1c79372d7d93c88fd97543880927b7635e3d2";
        sha256 = "1lzml5yj3ak0rc4r2fmb1zpb9a01i5j6yk58m0qn960l2x5kav68";
      };
    })
  ];
  #  vim-nix
  #  {
  #    plugin = commen-nvim
  #    config = ''lua require("Comment").setup()'';
  #  }
  #];
  # or this for the configuration
  # extraConfigLua = "require('my-plugin').setup({foo = "bar"})";
}
