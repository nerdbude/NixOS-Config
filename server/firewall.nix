#---------------------------
# MODULE: firewall.nix
# TODO: 
#   - check ports
#---------------------------

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
