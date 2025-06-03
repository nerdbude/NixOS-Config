#----------------------------------------------------
# MODULE:   gitweb.nix
# FUNCTION: configuration for gitweb
# AUTHOR:   0x17
# MAIL:     post@nerdbude.com
# MASTODON: https://corteximplant.com/@0x17
#-----------------------------------------------------

{ config, pkgs, ...}:

{
	services.gitweb = {
		projectroot = "/root/git/";
		gitwebTheme = true;
		

	};	

	services.nginx = {
		enable = true;
	
		gitweb = {
			enable = true;	
			virtualHost = "192.168.0.136";
		};
		
		virtualHosts."192.168.0.136" = {
			forceSSL = false;
			enableACME = false;
		};
	};

}


