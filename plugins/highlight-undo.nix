{ pkgs, ...}: {
  extraPlugins = with pkgs.vimPlugins; [
    highlight-undo-nvim
  ];

  extraConfigLua = ''
    require('highlight-undo').setup({
      duration = 300,
      undo = {
        hlgroup = 'HighlightUndo',
        mode = 'n',
        lhs = 'u',
        map = 'undo',
        opts = {}
      },
      redo = {
        hlgroup = 'HighlightRedo',
        mode = 'n',
        lhs = '<C-r>',
        map = 'redo',
        opts = {}
      },
      highlight_for_count = true,
    })
  '';
}
