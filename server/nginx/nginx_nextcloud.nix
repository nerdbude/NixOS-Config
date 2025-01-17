{ self, config, lib, pkgs, ... }:
{
services = {
	nginx.virtualHosts = {
		"c.kyb3r.space" = {
			forceSSL = true;
			enableACME = true;
		};
	};


};

	security.acme.acceptTerms = true;
	security.acme.certs = {
		"c.kyb3r.space".email = "post@nerdbude.com";
	};

}
