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
    domain = "DOMAIN";  # CHANGE THE DOMAIN
    port = 2342;
    addr = "127.0.0.1";
  };

  services.nginx.virtualHosts.${config.services.grafana.domain} = {
    enableACME = true;
    forceSSL = true;
    locations."/" = {
        proxyPass = "http://127.0.0.1:${toString config.services.grafana.port}";
        proxyWebsockets = true;
    };
  };

  security.acme.acceptTerms = true;
  security.acme.certs = {
    "DOMAIN".email = "post@nerdbude.com";  # CHANGE THE DOMAIN
  };
}
