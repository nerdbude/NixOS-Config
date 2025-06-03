#-----------------------------------------------------------------
# MODULE:    borg.nix
# FUNCTION: automated backups
# AUTHOR:    0x17
# MAIL:          post@nerdbude.com
# Mastodon: https://corteximplant.com/@0x17
#-----------------------------------------------------------------

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
  envirnment.BORG_RSH = "ssh -p23 u342371@u342371.your-storagebox.de";
  repo = "ssh://u342371@u342371.your-storagebox.de:23/backups/NB-IF-00";
  compression = "auto,zst"
  startAt = "daily";
};
