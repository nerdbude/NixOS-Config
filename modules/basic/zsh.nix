{ config, pkgs, ... }:

### ZSH CONFIG

{
	users.defaultUserShell = pkgs.zsh;
	programs.zsh = {
        enable = true;
        enableBashCompletion = true;
        enableCompletion = true;
        enableLsColors = true;

        syntaxHighlighting = {
          enable = true;
          ### DRACULA SYNTAX THEMING
          styles = {
            "comment" = "fg=#6272A4";
            "alias" = "fg=#F1FA8C,bold";
            "suffix-alias" = "fg=#50FA7B";
            "global-alias" = "fg=#50FA7B";
            "function" = "fg=#50FA7B";
            "command" = "fg=#D6ACFF,italic";
            "precommand" = "fg=#50FA7B,italic";
            "autodirectory" = "fg=#FFB86C,italic";
            "single-hyphen-option" = "fg=#FFB86C";
            "double-hyphen-option" = "fg=#FFB86C";
            "back-quoted-argument" = "fg=#BD93F9";
            "builtin" = "fg=#BD93F9,italic";
            "reserved-word" = "fg=#8BE9FD";
            "hashed-command" = "fg=#8BE9FD";
            "commandseparator" = "fg=#FF79C6";
            "command-substitution-delimiter" = "fg=#F8F8F2";
            "command-substitution-delimiter-unquoted" = "fg=#F8F8F2";
            "process-substitution-delimiter" = "fg=#F8F8F2";
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
            "dollar-quoted-argument" = "fg=#F8F8F2";
            "dollar-quoted-argument-unclosed" = "fg=#FF5555";
            "dollar-double-quoted-argument" = "fg=#F8F8F2";
            "assign" = "fg=#F8F8F2";
            "named-fd" = "fg=#F8F8F2";
            "numeric-fd" = "fg=#F8F8F2";
            "unknown-token" = "fg=#FF5555";
            "path" = "fg=#FF92DF";
            "path_pathseparator" = "fg=#FF79C6";
            "path_prefix" = "fg=#FF92DF";
            "path_prefix_pathseparator" = "fg=#FF79C6";
            "globbing" = "fg=#F8F8F2";
            "history-expansion" = "fg=#BD93F9";
            "back-quoted-argument-unclosed" = "fg=#FF5555";
            "redirection" = "fg=#F8F8F2";
            "arg0" = "fg=#F8F8F2";
            "default" = "fg=#F8F8F2";
            "cursor" = "standout";
          };

        };
        ohMyZsh = {
			enable = true;
			theme = "refined";
			plugins = [ "themes" "colorize" "git" "colored-man-pages" "ssh" ];
		};
		shellAliases = {
		    podcast = "podboat -C ~/home/pho/.config/podboat/pod-config";
			vim = "nvim";
			ll = "ls -l";
			update = "sh ./SCRIPTS/rebuilddiff.sh";
			upgrade = "sh ./SCRIPTS/upgrade.sh";
			garbage = "sudo nix-collect-garbage";
			reddit="tuir";
			wlan="nmtui";
			matrix="iamb";
			status="python /home/pho/SCRIPTS/ping.py";
			email="aerc";
			options="cat ./SCRIPTS/options";
			accesspoint="sh ./SCRIPTS/accesspoint.sh";
			uconsole="ssh pho@192.168.0.94";
		};

	};
}


