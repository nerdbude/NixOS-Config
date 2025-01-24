{ config, pkgs, ... }:
{
  services.grafana = {
    enable = true;
    settings = {
      server = {
        http_addr = "127.0.0.1";
        http_port = 3000;
        domain = "s.kyb3r.space";
        serve_from_sub_path = true;
      };
    };
  };

  services.nginx.virtualHosts."s.kyb3r.space" = {
    addSSL = true;
    enableACME = true;
    locations."/grafana/" = {
      proxyPass = "http://${toString config.services.grafana.settings.server.http_addr}:${toString config.services.grafana.settings.server.http_port}";
      proxyWebsockets = true;
      recommendedProxySettings = true;
    };
  };

  security.acme.acceptTerms = true;
  security.acme.certs = {
    "s.kyb3r.space".email = "post@nerdbude.com";
  };

}
