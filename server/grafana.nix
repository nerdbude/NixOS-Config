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

  services.nginx.virtualHosts."192.168.0.136" = {
    locations."/grafana/" = {
      proxyPass = "https://$toString config.services.grafana.settings.server.http_addr}:${toString config.services.grafana.settings.server.http_port}";
      proxyWebsockets = true;
      recommendedProxySettings = true;
    };
  };
}
