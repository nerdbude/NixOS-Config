#-----------------------------
# MODULE: tools.nix
# TODO: check tool-list befor rebuild 
#
#-----------------------------
{ config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [

    # SYSTEM
    git
    wget
    unzip
    xbanish
    nvd
    linux-wifi-hotspot
    nix-tree
    xbrightness
    xorg.xrandr
    xcompmgr
    networkmanager
    inetutils
    ssh-audit
    rofi 
    alacritty

    # GAMES
    cataclysm-dda

    # TERMINAL TOOLS
    aerc
    lnav
    tuir
    go-2fa
    btop
    nmap
    tldr
    zip
    ranger
    gh
    goaccess
    acpi
    tut
    vifm
    img2pdf
    wtf
    sxiv
    p7zip
    iamb
    buku
    calcure
    croc
    watchmate
    zathura
    newsboat

    # HASKELL
    ghc
    haskellPackages.libmpd
    haskellPackages.xmobar
    haskellPackages.xmonad
    haskellPackages.xmonad-contrib
    haskellPackages.xmonad-extras

    # KEYBOARDS
    avrdudess
    vial
    qmk
    qmk_hid
    qmk-udev-rules

    # OFFICE
    libreoffice

    # GUI TOOLS
    remmina
    ventoy-bin-full
    inkscape
    baobab
    drawio
    firefox
    obsidian
    qutebrowser
    thunderbird
    nitrogen
    gimp

  ];
}
