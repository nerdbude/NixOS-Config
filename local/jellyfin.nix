#----------------------------------------------------
# MODULE:   jellyfin.nix
# FUNCTION: configuration for jellyfin
# AUTHOR:   0x17
# MAIL:     post@nerdbude.com
# MASTODON: https://corteximplant.com/@0x17
#-----------------------------------------------------

{ pkgs,  ... }:
{
  services.jellyfin = {
    enable = true;
    openFirewall = true;
  };

  environment.systemPackages = [
    pkgs.jellyfin
    pkgs.jellyfin-web
    pkgs.jellyfin-ffmpeg
  ];

}

