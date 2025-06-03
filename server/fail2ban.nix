#----------------------------------------------------
# MODULE:   fail2ban.nix
# FUNCTION: configuration for fail2ban
# AUTHOR:   0x17
# MAIL:     post@nerdbude.com
# MASTODON: https://corteximplant.com/@0x17
#-----------------------------------------------------

{ config, pkgs, ... }:
{
  services.fail2ban = {
    enable = true;
    maxentry = 3;
    bantime = "12h";
  };

}
