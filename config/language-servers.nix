{pkgs, ...}: {
  plugins = {
    lsp = {
      enable = true;
      inlayHints = true;
      servers = {
        jsonls.enable = true;
        nixd.enable = true;
        yamlls.enable = true;
        bashls.enable = true;
      };
    };
  };
}
