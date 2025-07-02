{ config, pkgs, ... }:

let
  nixvim = import (builtins.fetchTarball "https://github.com/nix-community/nixvim/archive/master.tar.gz") {
    inherit pkgs;
  };
in {

  programs.nixvim.plugins.lsp = {
    enable = true;

    servers = {
      nixd.enable = true; # Nix LSP
      pyright.enable = true; # Python LSP
    };

    # servers.lua-ls.enable = true;
    # servers.tsserver.enable = true;
    # servers.rust-analyzer.enable = true;
  };

  programs.nixvim.plugins.lsp-format.enable = true;

  environment.systemPackages = with pkgs; [
    nixd
    pyright
  ];
}

