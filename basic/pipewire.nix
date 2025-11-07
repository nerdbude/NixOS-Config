# AUDIO DEPENDENCIES FOR LIVE MUSIC CODING

{ config, pkgs, ... }:
{
  services.pipewire = {
    enable = true;
    audio.enable = true;
    pulse.enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    jack.enable = true;
  };

  security.rtkit.enable = true;
  users.extraUsers.null.extraGroups = [ "audio" ];
}
