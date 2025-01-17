{ config, lib, ... }:

{
services.freshrss = {
	enable = true;
	# package = pkgs.freshrss;
	language = "en";
	defaultUser = "pho";
	passwordFile = "/run/secrets/freshrss";
	dataDir = "/var/lib/freshrss";
	baseUrl = "https://rss.kyb3r.space";
	virtualHost = "rss.kyb3r.space";
	database = {
		user = "pho";
		port = 3306;
		name = "freshrss";
		host = "localhost";
		tableprefix = "freshrss";
		type = "pgsql";
		
	};
};

services.postgresql = {
	enable = true;
	# package = pkgs.postgresql;
	# dataDir = "/mnt/postgresql1/";
	ensureDatabases = [ "freshrss" ];
#	ensureUsers = [
#		{
#			name = "freshrss";
#			ensurePermissions = {
#				"DATABASE freshrss" = "ALL PRIVILEGES";
#			};
#		}
#		{
#			name = "admin";
#			ensurePermission = {
#				"ALL TABLES IN SCHEMA public" = "ALL PRIVILEGES";
#			};
#		}
#	];
	port = 3306;
};
}
