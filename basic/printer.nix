#---------------------------------
# MODULE: printer.nix
# TODO: -
#
#---------------------------------

{ config, pkgs, ... }:
{
  services.printing.enable = true;
  services.avahi = {
    enable = true;
    nssmdns4 = true;
    openFirewall = true;
  };
}


