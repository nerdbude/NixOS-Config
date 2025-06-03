#----------------------------------------------------
# MODULE:   qmk.nix
# FUNCTION: configuration for qmk
# AUTHOR:   0x17
# MAIL:     post@nerdbude.com
# MASTODON: https://corteximplant.com/@0x17
#-----------------------------------------------------

{ config, pkgs, ... }:

{
	hardware.keyboard.qmk.enable = true;
	services.udev.packages = [ pkgs.qmk-udev-rules ];
}


