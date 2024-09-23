{
keymaps = [
  {
    # noremap ; :
    key = ";";
    action = ":";
  }
  {
    # nnoremap <leader>m <silent> <cmd>make<CR>
    mode = "n";
    key = "<leader>m";
    options.silent = true;
    action = "<cmd>!make<CR>";
  }
];
}
