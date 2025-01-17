{ self, config, lib, pkgs, ... }:
{
  services.nginx = {
    enable = true;
	virtualHosts."clickclackhack.de" = {
		enableACME = true;
		forceSSL = true;
		root = "/var/www/clickclackhack/";
		};
	virtualHosts."www.clickclackhack.de" = {
		enableACME = true;
		forceSSL = true;
		root = "/var/www/clickclackhack/";
		};

};

	security.acme.acceptTerms = true;
	security.acme.certs = {
    	  "clickclackhack.de".email = "info@clickclackhack.de";
	      "www.clickclackhack.de".email = "info@clickclackhack.de";
    };

}
