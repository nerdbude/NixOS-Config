#
# 8"""8 8"""" 8"""8  8""""8 8""""8   8   8 8""""8 8""""
# 8   8 8     8   8  8    8 8    8   8   8 8    8 8
# 8e  8 8eeee 8eee8e 8e   8 8eeee8ee 8e  8 8e   8 8eeee
# 88  8 88    88   8 88   8 88     8 88  8 88   8 88
# 88  8 88    88   8 88   8 88     8 88  8 88   8 88
# 88  8 88eee 88   8 88eee8 88eeeee8 88ee8 88eee8 88eee
#
#[website] https://www.nerdbude.com
#[mail] post@nerdbude.com
#[mastodon] @0x17@corteximplant.com
#[github] https://www.github.com/nerdbude
#
#======================================================
# CONFIG FOR NIXVIM 
#======================================================

{ modules, config, pkgs, lib, ... }:

let
    nixvim = import (builtins.fetchGit {
      url = "https://github.com/nix-community/nixvim";
        ref = "nixos-24.11";
    });
in

{
  imports = 
  [ 
    nixvim.nixosModules.nixvim
    ./nixvim_modules/alpha.nix
    ./nixvim_modules/keymaps.nix
    ./nixvim_modules/lualine.nix
  #  ./nixvim_modules/cmp.nix
    ./nixvim_modules/lsp.nix
  ];

    programs.nixvim = {

    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };


	# BASE CONFIG
	enable = true;
	defaultEditor = true;    

    # COLORSCHEME 
	colorschemes = {
		dracula-nvim = {
			enable = true;
		};	
	};

    # ---------------------------------------------
    # PLUGINS
    # ---------------------------------------------
	plugins = {
#        colorizer.enable = true;
        nvim-tree.enable = true;
        telescope.enable = true;
        vim-css-color.enable = true;
	    barbecue.enable = true;
		fugitive.enable = true;
        nix.enable = true;
#       qmk.enable = true;

        lualine = {
            enable = true;
#            icons_enabled = false;
        };
        
        web-devicons = {
			enable = true;
			settings = {
				color_icons = true;
				strict = true;
			};
		};
      };

    extraPlugins = [
      (pkgs.vimUtils.buildVimPlugin {
        pname = "vim-tidal";
        version = "2023-10-01";
        src = pkgs.fetchFromGitHub {
          owner = "tidalcycles";
          repo = "vim-tidal";
          rev = "master";
          sha256 = "sha256-8gyk17YLeKpLpz3LRtxiwbpsIbZka9bb63nK5/9IUoA=";
        };
      })
    ];
          
        opts = {
           number = true;
           relativenumber = true;
           tabstop = 4;
           cursorline = true;
           scrolloff  = 4;
           splitright = true;

       };
    };
}

