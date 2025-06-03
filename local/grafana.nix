#----------------------------------------------------
# MODULE:   grafana.nix
# FUNCTION: configuration for grafana
# AUTHOR:   0x17
# MAIL:     post@nerdbude.com
# MASTODON: https://corteximplant.com/@0x17
#-----------------------------------------------------

{ config, pkgs, ... }:
{
  services.grafana = {
    enable = true;
    settings = {
      server = {
        http_addr = "127.0.0.1";
        http_port = 3000;
        domain = "192.168.0.136";
  #     root_url = "https://your.domain/grafana/";
        serve_from_sub_path = true;
      };
    };
  };
}
