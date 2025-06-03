#----------------------------------------------------
# MODULE:   tmux.nix
# FUNCTION: configuration for tmux
# AUTHOR:   0x17
# MAIL:     post@nerdbude.com
# MASTODON: https://corteximplant.com/@0x17
#-----------------------------------------------------

{ config, pkgs, ... }:

{
programs.tmux = {
	enable = true;
	clock24 = true;
	
	extraConfig = ''
		run-shell ${pkgs.tmuxPlugins.dracula}/share/tmux-plugins/dracula/dracula.tmux
	'';

};

}
