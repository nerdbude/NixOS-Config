#-----------------------------------------------------------------
# MODULE:   autoupdate.nix
# FUNCTION: Automatical update and garbage collection + logging
# AUTHOR:   0x17
# MAIL:     post@nerdbude.com
# Mastodon: https://corteximplant.com/@0x17
#-----------------------------------------------------------------

{config, pkgs, ... }:
{

  ## AUTO UPDATE
  system.autoUpdate = {
    enable = true;
    persistent = true;
    dates = "12:00";
  };

  ## LOGGING
  ## /var/log/nixos-upgrade.log
  systemd.services.nixos-upgrade.serviceConfig = {
    StandardOutput = "file:/var/log/nixos-upgrade.log";
    StandardError = "inherit";
  };

  systemd.timers.nixos-upgrade.timerConfig.WakeSystem = true;

  ## LOG ROTATE
  environments.etc."logrotate.d/nixos-upgrade".text = "
    /var/log/nixos-upgrade.log {
      daily
      missingok
      rotate 7
      compress
      delaycompress
      notifempty
      create 644 root root
    }
  ";

  systemd.services.logrotate-nixos-upgrade = {
    description = "Logrotate for NixOS Upgrade logs.";
    enable = true;
    serviceConfig = {
      Type = "oneshot";
      ExecStart = "${pkgs.logrotate}/bin/logrotate /etc/logrotate.d/nixos-upgrade --state (var/lib/logrotate/status";
    };
  };
  
  ## SET DAILY FOR ROTATE
  systemd.timers.logrotate-nixos-upgrades = {
    description = "Daily Logrotate for NixOS upgrade logs.";
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnCalendar = "*-*-* 18:00:00";
      Persistent = true;
      WakeSystem = true;     
    };
  };

  ## GARBAGE COLLECTION
  nix.gc = {
    automatic = true;
    dates = "Mon *-*-* 09:00"; 
  };

  systemd.timers.nix-gc.timerConfig = {
    WakeSystem = true;
    Persistent = true;
  };

  systemd.services.nix-gc-wipe = {
    description = "Wipe all old system generations";
    serviceConfig = {
      Type = "oneshot";
      Environment = "PATH=/run/current-system/sw/bin";
      ExecStart = "/bin/sh -c 'nix-env --delete-generations old --profile /nix/var/nix/profiles/system && nix-collect-garbage -d'";

    };
  };

  systemd.timers.nix-gc-wipe = {
    wantedBy = [ "timers.target" ];
    timerConfig = {
      OnCalendar = "Mon *-*-* 15:00:00";
      WakeSystem = true;
      Persistent = true;
    };
  };

  
    
}
