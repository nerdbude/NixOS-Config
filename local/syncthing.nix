{ config, pkgs, ... }:

{
	services.syncthing = {
		enable = true;
		user = "null";
		dataDir = "/home/null/sync";
		configDir = "/home/null/.config/syncthing";	
	};

}
