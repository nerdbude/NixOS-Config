{ self, config, lib, pkgs, ... }:

{
services.nextcloud = {
	enable = true;
	hostName = "c.kyb3r.space";

	package = pkgs.nextcloud28;
	database.createLocally = true;
	configureRedis = true;
	home = "/var/lib/next";
	
	maxUploadSize = "16G";
	https = true;
	
	autoUpdateApps.enable = true;
	extraAppsEnable = true;
	extraApps = {
		inherit (config.services.nextcloud.package.packages.apps) polls forms;
		};
	

	config = {
		# overwriteProtocol = "https";
		defaultPhoneRegion = "PT";
		dbtype = "pgsql";
		adminuser = "admin";
		adminpassFile = "/var/secrets/nextcloud";

	};
};

}