{pkgs, ...}: {
  colorschemes = {
    # https://github.com/nix-community/nixvim/blob/main/plugins/colorschemes/everforest.nix
    # https://github.com/sainnhe/everforest/tree/master
    everforest = {
      enable = true;
      package = pkgs.vimPlugins.everforest;
      settings = {
        background = "hard";
        enable_italic = 1;
        ui_contrast = "high";
      };
    };
  };
}
