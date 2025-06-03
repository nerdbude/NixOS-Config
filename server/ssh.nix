#----------------------------------------------------
# MODULE:   ssh.nix
# FUNCTION: configuration for ssh
# AUTHOR:   0x17
# MAIL:     post@nerdbude.com
# MASTODON: https://corteximplant.com/@0x17
#-----------------------------------------------------

{ config, pkgs, ... }:
{
  services.openssh.enable = true;
  users.users.root.openssh.authorizedKeys.keys = [
    "ssh-rsa BAAAAB3NzaC1yc2EAAAADAQABAAABgQC4gBKHGeU7vSiEWGg0cXQDDa8CskszQSnCQqyHUqo52DNpweGKZnJHe22wluFIUJUGyqOpybxClT78joXlcItEQ9pmzBv58LQ7E24DNh158UiPwdZFyaVfZQMEBRC0FahFCH8SYfDcqZZmpTmkTJpKtIT0nTKq3Ga790uM+zTQt1r1dGZYf0ytuGmrQoqF4JDFmFI7ed5fAQ/EszUJ2mOE2+7iaV24F2VFbNKOduXrpVksF62tJX6xu6+t8MkbqfIAWtAdlkZ0CXUbFsld9Z35okeF/eAaT+kaiIoJlzIOftQVGC+l/dEXv6UWhLtFeYNk9QwoDopJyQWdOFDvHrs9E+0GtUhkNUWlWi7aQN1U9zdc0lyStRMTWeEkEdPq9NLJPrExZwnnU+FZTfRlPWVa1Q+kYfNx7wsoEMHZiawrFMmFCISpTih9KJ5Bw4mxyCGYh/UHv79/LXGaYNboZ3kCQKAQvvZbnAe4j6/ouAENVudJrhzwNyN+ulVPv4Xx2HU= pho@nixos" 
  ];
}
