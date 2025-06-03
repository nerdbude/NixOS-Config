#----------------------------------------------------
# MODULE:   nixvim.nix
# FUNCTION: configuration for nvim in nix 
# AUTHOR:   0x17
# MAIL:     post@nerdbude.com
# MASTODON: https://corteximplant.com/@0x17
#-----------------------------------------------------

{ modules, config, pkgs, lib, ... }:

let
    nixvim = import (builtins.fetchGit {
      url = "https://github.com/nix-community/nixvim";
        ref = "nixos-24.11";
    });
in

{
    imports = [nixvim.nixosModules.nixvim];

    programs.nixvim = {
        
	# BASE CONFIG
	enable = true;
	defaultEditor = true;
	# COLORSCHEME 
	colorschemes = {
		dracula-nvim = {
			enable = true;
		};	
	};

	# PLUGINS
	plugins = {
        nvim-tree = {
            enable = true;
        };
        
        telescope = {
			enable = true;
		};
		lualine = {
			enable = true;
		};
		alpha = {
			enable = true;
			theme = "startify";
		};
		web-devicons = {
			enable = true;
			settings = {
				color_icons = true;
				strict = true;
			};
		};
		vim-css-color = {
			enable = true;
		};
		barbecue = {
			enable = true;
		};
        fugitive = {
			enable = true;
		};
		nix = {
			enable = true;
		};
          };
      opts = {
           number = true;
           relativenumber = true;
           tabstop = 4;
           cursorline = true;
           scrolloff  = 4;
           splitright = true;

      };
      keymaps = [
        {
          mode = "n";
          key = "<C-h>";
          action = "<C-w>h";
          options = {
            desc = "Go to left window";
            remap = true;
          };
        }
        {
          mode = "n";
          key = "<C-j>";
          action = "<C-w>j";
          options = {
            desc = "Go to lower window";
            remap = true;
          };
        }
        {
          mode = "n";
          key = "<C-k>";
          action = "<C-w>k";
          options = {
            desc = "Go to upper window";
            remap = true;
          };
        }
        {
          mode = "n";
          key = "<C-l>";
          action = "<C-w>l";
          options = {
            desc = "Go to right window";
            remap = true;
          };
        }
      ];

    };
}

