#----------------------------------------------------
# MODULE:   prometheus.nix
# FUNCTION: configuration for prometheus
# AUTHOR:   0x17
# MAIL:     post@nerdbude.com
# MASTODON: https://corteximplant.com/@0x17
#-----------------------------------------------------

{ pkgs, config, ... }:
{
services.prometheus = {
	enable = true;
	port = 9001;
	exporters = {
		node = {
			enable = true;
			enabledCollectors = [ "systemd" ];
			port = 9002;
		};
	};
	scrapeConfigs = [
		{
			job_name = "MC-EX-00";
			static_configs = [{
				targets = ["127.0.0.1:${toString config.services.prometheus.exporters.node.port}"];
			}];
		}
		 
	];
};

}
