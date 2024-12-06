{ pkgs, ...}: {

  # animate the cursor with a smear effec

  extraPlugins = with pkgs.vimUtils; [
    (buildVimPlugin {
      pname    = "smear-cursor.nvim";
      version  = "2024-12-06";
      src      = pkgs.fetchFromGitHub {
        owner  = "sphamba";
        repo   = "smear-cursor.nvim";
        rev    = "ee62ace831461704cf3733414820328451e1ead3";
        sha256 = "sha256-Xq1TrpdOx1UF2NlcprCuqSydcL1l9DcAlYvKYC4eNCQ=";
      }; }) ];

  extraConfigLua = ''
    require("smear_cursor").setup {
      opts = {
        -- Smear cursor color. Defaults to Cursor GUI color if not set.
        -- Set to "none" to match the text color at the target cursor position.
        cursor_color = "#d3cdc3",

        -- Background color. Defaults to Normal GUI background color if not set.
        normal_bg = "#282828",

        -- Smear cursor when switching buffers or windows.
        smear_between_buffers = true,

        -- Smear cursor when moving within line or to neighbor lines.
        smear_between_neighbor_lines = true,

        -- Set to `true` if your font supports legacy computing symbols (block unicode symbols).
        -- Smears will blend better on all backgrounds.
        legacy_computing_symbols_support = false,
      },
    }
  '';
}
