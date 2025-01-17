{ self, config, lib, pkgs, ... }:
{
services.nginx = {
	virtualHosts."git.nerdbude.com" = {
		enableACME = true;
		forceSSL = true;
		root = "/var/www/git/";
		};
};

	security.acme.acceptTerms = true;
	security.acme.certs = {
	    "git.nerdbude.com".email = "post@nerdbude.com";
    };
}
