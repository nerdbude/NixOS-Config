#----------------------------------------------------
# MODULE:   syncthing.nix
# FUNCTION: configuration for syncthing
# AUTHOR:   0x17
# MAIL:     post@nerdbude.com
# MASTODON: https://corteximplant.com/@0x17
#-----------------------------------------------------
{ config, pkgs, ... }:

{
	services.syncthing = {
		enable = true;
		user = "pho";
		dataDir = "/home/pho/sync";
		configDir = "/home/pho/.config/syncthing";	
	};

}
