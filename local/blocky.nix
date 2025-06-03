#----------------------------------------------------
# MODULE:   blocky.nix
# FUNCTION: configuration for blocky
# AUTHOR:   0x17
# MAIL:     post@nerdbude.com
# MASTODON: https://corteximplant.com/@0x17
#-----------------------------------------------------

{ config, pkgs, ... }:

{
  services.blocky = {
    enable = true;
    settings = {
      ports.dns = 53;
      upstreams.groups.default = [
        "https://one.one.one.one/dns-query"
      ];
      bootstrapDns = {
        upstream = "https://one.one.one.one/dns-query";
        ips = [ "1.1.1.1" "1.0.0.1"];
      };

      blocking = {
        blackLists = {
          ads = ["https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts"];
        };

        clientGroupsBlock = {
          default = [ "ads" ];
        };

      };

    };
  
  };

}


