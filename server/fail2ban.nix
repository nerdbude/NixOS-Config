#------------------------------
# MODULE: fail2ban.nix
# TODO: 
#------------------------------
#
{ config, pkgs, ... }:
{
  services.fail2ban = {
    enable = true;
    maxentry = 3;
    bantime = "12h";
  };

}
