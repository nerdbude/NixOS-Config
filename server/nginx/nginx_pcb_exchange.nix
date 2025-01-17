{ self, config, lib, pkgs, ... }:
{
services.nginx = {
  enable = true;
	virtualHosts."pcb-exchange.de" = {
		enableACME = true;
		forceSSL = true;
		root = "/var/www/pcbexchange";
		};
	virtualHosts."www.pcb-exchange.de" = {
		enableACME = true;
		forceSSL = true;
		root = "/var/www/pcbexchange";
		};
};

	security.acme.acceptTerms = true;
	security.acme.certs = {
 	    "www.pcb-exchange.de".email = "post@nerdbude.com";
	    "pcb-exchange.de".email = "post@nerdbude.com";
    };
}
