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
    (pkgs.vimUtils.buildVimPlugin {
      pname = "highlight-undo.nvim";
      version = "v1.0";
      src = pkgs.fetchFromGitHub {
        owner = "tzachar";
        repo  = "highlight-undo.nvim";
        # rev = "2234bfa8044dc39a8baf90470747c65e4623a222";
        # sha256 = "0w5fvqic3qapi9ggfb81nqa9fl6jv831s91r0wgn4d7c35h0340r";
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
