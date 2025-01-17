{ self, config, lib, pkgs, ... }:
{
services.nginx = {
  enable = true;
	virtualHosts."nerdbude.com" = {
		enableACME = true;
		forceSSL = true;
		root = "/var/www/nerdbude/";
		};
	virtualHosts."www.nerdbude.com" = {
		enableACME = true;
		forceSSL = true;
		root = "/var/www/nerdbude/";
		};
};

	security.acme.acceptTerms = true;
	security.acme.certs = {
 	    "nerdbude.com".email = "post@nerdbude.com";
	    "www.nerdbude.com".email = "post@nerdbude.com";
    };
}
