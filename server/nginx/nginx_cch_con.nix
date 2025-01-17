{ self, config, lib, pkgs, ... }:
{
  services.nginx = {
    enable = true;
	virtualHosts."www.cch-con.de" = {
		enableACME = true;
		forceSSL = true; 
		root = "/var/www/cchcon/";
		};
	virtualHosts."cch-con.de" = {
		enableACME = true;
		forceSSL = true; 
		root = "/var/www/cchcon/";
		};
};

	security.acme.acceptTerms = true;
	security.acme.certs = {
    	"www.cch-con.de".email = "post@nerdbude.com";
	    "cch-con.de".email = "post@nerdbude.com";
    };
}
