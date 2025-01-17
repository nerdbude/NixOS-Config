{ self, config, lib, pkgs, ... }:
{
services.nginx = {
  enable = true;
	virtualHosts."damnfinekeyboards.com" = {
		enableACME = true;
		forceSSL = true;
		root = "/var/www/damnfinekeyboards/";
		};
	virtualHosts."www.damnfinekeyboards.com" = {
		enableACME = true;
		forceSSL = true;
		root = "/var/www/damnfinekeyboards/";
		};
};

	security.acme.acceptTerms = true;
	security.acme.certs = {
    	  "damnfinekeyboards.com".email = "info@damnfinekeyboards.com";
	      "www.damnfinekeyboards.com".email = "info@damnfinekeyboards.com";
   
    };

}
