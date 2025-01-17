{ self, config, lib, pkgs, ... }:
{
services.nginx = {
  enable = true;
    virtualHosts."kyb3r.nerdbude.com" = {
		enableACME = true;
		forceSSL = true;
		root = "/var/www/kyb3rkeys";
		};
};

	security.acme.acceptTerms = true;
	security.acme.certs = {
	    "kyb3r.nerdbude.com".email = "post@nerdbude.com";
    };
}
