{ self, config, lib, pkgs, ... }:
{
services.nginx = {
  enable = true;
	virtualHosts."keebs.nerdbude.com" = {
		enableACME = true;
		forceSSL = true;
		root = "/var/www/keyboards";
		};
};

	security.acme.acceptTerms = true;
	security.acme.certs = {
	    "keebs.nerdbude.com".email = "post@nerdbude.com";
    };

}
