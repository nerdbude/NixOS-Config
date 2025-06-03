#----------------------------------------------------
# MODULE:   firewall.nix
# FUNCTION: configuration for firewall
# AUTHOR:   0x17
# MAIL:     post@nerdbude.com
# MASTODON: https://corteximplant.com/@0x17
#-----------------------------------------------------

{ config, pkgs, ... }:
{
	networking.firewall = {
		enable = true;
		allowedTCPPorts = [ 22 25 80 443 ];
		allowedUDPPortRanges = [
			{ from = 4000; to = 4007; }
			{ from = 8000; to = 8010; }
		];

	};

	networking.enableIPv6 = true;

}
