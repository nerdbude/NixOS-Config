{ ... }:
{
  services = {
    goatcounter = {
      enable = true;
      proxy = true;
      address = "127.0.0.1";
      port = 5982;
    };

    nginx = {
      virtualHosts = {
        "stats.nerdbude.com" = {
          addSSL = true;
          enableACME = true;
          locations."/" = {
            proxyPass = "http://127.0.0.1:5982";
            proxyWebsockets = true;
          };
        };
      };
    };
  };

  security.acme = {
    acceptTerms = true;
    certs = {
      "stats.nerdbude.com" = {
        email = "post@nerdbude.com";
      };
    };
  };
}
