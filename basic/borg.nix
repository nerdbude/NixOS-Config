{ config, pkgs, ... }:
{
services.borgbackup.jobs.NB-IF-00 = {
  paths = [ 
    "/home/null/"
    "/etc/nixos/"
  ];
  exclude = [
    "/home/null/.cache"
    "/home/null/Arduino"
    "/home/null/.arduino15"
    "/home/null/.arduinoIDE"
    "/home/null/.cargo"
    "/home/null/.compose-cache"
    "/home/null/.npm"
    "/home/null/."
    "/home/null/.cargo"
    "/home/null/.cargo"
  ];
  encryption.mode = "none";
  environment.BORG_RSH = "ssh -p23 u342371@u342371.your-storagebox.de";
  repo = "ssh://u342371@u342371.your-storagebox.de:23/backups/NB-IF-00";
  startAt = "daily";
};
}
