{ self, config, lib, pkgs, ... }:
{
services.nginx = {
	enable = true;
	virtualHosts."www.hacker-kultur.de" = {
		enableACME = true;
		forceSSL = true;
		root = "/var/www/hackerkultur/";
		};
	virtualHosts."hacker-kultur.de" = {
		enableACME = true;
		forceSSL = true;
		root = "/var/www/hackerkultur/";
		};
};

	security.acme.acceptTerms = true;
	security.acme.certs = {
        	"www.hacker-kultur.de".email = "info@hacker-kultur.de";
	        "hacker-kultur.de".email = "info@hacker-kultur.de";
    };
}
