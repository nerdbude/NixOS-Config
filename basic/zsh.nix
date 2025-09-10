{ pkgs, ... }:
### THEME IMPORT
### Theme: Passion
### Dependencies (nixpkgs): 
### - bc
let

  geometryTheme = pkgs.fetchFromGitHub {
    owner = "geometry-zsh";
    repo = "geometry";
    rev = "main";
    sha256 = "FoOY7dkeYC7xQJkX06IDZdduXCfpDxB2aHoSludAMbI=";
  };

  nzshTheme = pkgs.fetchFromGitHub {
    owner = "nerdbude";
    repo = "nzsh";
    rev = "main";
    sha256 = "HQI1VUf5Y6MlpM6RXd13PPYSyF6H4Ot4qcodfLpUPck=";
#    sha256 = "0000000000000000000000000000000000000000000000000000";
  };

### ZSH CONFIG
in
{
	users.defaultUserShell = pkgs.zsh;
	programs.zsh = {
        enable = true;
        enableBashCompletion = true;
        enableCompletion = true;
        enableLsColors = true;
        ohMyZsh = {
          enable = true;
          custom = "${nzshTheme}";
		  theme = "nzsh";
		  plugins = [ "themes" "colorize" "git" "colored-man-pages" "ssh" ];
		};

        syntaxHighlighting = {
          enable = true;
          ### KYBER.COLOR SSYNTAX THEMING
          styles = {
            "comment" = "fg=#C3C3C3";
            "alias" = "fg=#FF79C6,bold";
            "suffix-alias" = "fg=#50FA7B";
            "global-alias" = "fg=#50FA7B";
            "function" = "fg=#50FA7B";
            "command" = "fg=#FF79C6,bold";
            "precommand" = "fg=#50FA7B,italic";
            "autodirectory" = "fg=#FFB86C,italic";
            "single-hyphen-option" = "fg=#FFB86C";
            "double-hyphen-option" = "fg=#FFB86C";
            "back-quoted-argument" = "fg=#BD93F9";
            "builtin" = "fg=#BD93F9,italic";
            "reserved-word" = "fg=#8BE9FD";
            "hashed-command" = "fg=#8BE9FD";
            "commandseparator" = "fg=#FF79C6";
            "command-substitution-delimiter" = "fg=#C3C3C3";
            "command-substitution-delimiter-unquoted" = "fg=#C3C3C3";
            "process-substitution-delimiter" = "fg=#C3C3C3";
            "back-quoted-argument-delimiter" = "fg=#FF79C6";
            "back-double-quoted-argument" = "fg=#FF79C6";
            "back-dollar-quoted-argument" = "fg=#FF79C6";
            "command-substitution-quoted" = "fg=#F1FA8C";
            "command-substitution-delimiter-quoted" = "fg=#F1FA8C";
            "single-quoted-argument" = "fg=#F1FA8C";
            "single-quoted-argument-unclosed" = "fg=#FF5555";
            "double-quoted-argument" = "fg=#F1FA8C";
            "double-quoted-argument-unclosed" = "fg=#FF5555";
            "rc-quote" = "fg=#F1FA8C";
            "dollar-quoted-argument" = "fg=#C3C3C3";
            "dollar-quoted-argument-unclosed" = "fg=#FF5555";
            "dollar-double-quoted-argument" = "fg=#C3C3C3";
            "assign" = "fg=#C3C3C3";
            "named-fd" = "fg=#C3C3C3";
            "numeric-fd" = "fg=#C3C3C3";
            "unknown-token" = "fg=#FF5555";
            "path" = "fg=#FF79C6";
            "path_pathseparator" = "fg=#FF79C6";
            "path_prefix" = "fg=#FF79C6";
            "path_prefix_pathseparator" = "fg=#FF79C6";
            "globbing" = "fg=#C3C3C3";
            "history-expansion" = "fg=#BD93F9";
            "back-quoted-argument-unclosed" = "fg=#FF5555";
            "redirection" = "fg=#C3C3C3";
            "arg0" = "fg=#C3C3C3";
            "default" = "fg=#C3C3C3";
            "cursor" = "standout";
          };

        };
		shellAliases = {
			vim = "nvim";
			ll = "ls -l";
			update = "sh ./SCRIPTS/rebuilddiff.sh";
			upgrade = "sh ./SCRIPTS/upgrade.sh";
			garbage = "sudo nix-collect-garbage";
			reddit="tuir";
            wlan="nmtui";

            # LOCAL NODES
			carter="ssh root@192.168.0.101";
			finch="ssh root@192.168.0.136";
			activity="ssh root@159.69.192.195";
			uconsole="ssh pho@192.168.0.94";

            # EXTERN NODES
            machine="ssh -i ~/.ssh/matrix root@94.130.224.206";
			control="ssh root@162.55.61.209";
			shaw="ssh -p23 u342371@u342371.your-storagebox.de";
            ingram="ssh root@128.140.64.82";
            

            matrix="iamb";
			status="python /home/null/SCRIPTS/ping.py";
            email="aerc";
			options="cat ./SCRIPTS/options";
			accesspoint="sh ./SCRIPTS/accesspoint.sh";
		};

	};
}


