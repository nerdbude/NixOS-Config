<p align="center"><img src="/img/logo.png" width="200"></p>
<h1 align="center">[ NixOS ]</h1>
<p align="center">My config files for all of my NixOS machines</p>

<p>I use a basic `configuration.nix` and add all modules I need for every machine. The modules are splitted in `server` and `basic` modules. The `server` modules provide webservices and webserver and the `basic` modules can be used for both local machines and servers.</p>

<p align="center"><img src="/img/dia.png"></p>

To add modules to the `configuration.nix` just use basic nix imports:

```nix
imports = [
    ./modules/zsh.nix
    ...
];
```

## Modules

### Basic
`tmux.nix` - tmux is a command line terminal multiplexer, comparable to screen or Terminator. tmux makes it possible to create and manage various virtual console sessions within a terminal or terminal emulation.

`nixvim.nix` - nixvim is a NixOS module to configure the whole behavior of NeoVim within a nix-module. No extra configfiles or plugin are required. 

`zsh.nix` - This module config the whole `zsh` shell environment including `Oh-my-ZSH` and theming. 

`syncthing.nix` - I sync my Obsidian Vault via `Syncthing` to my iPhone. 

`qmk.nix` - If you build keyboards and keyboard-layouts you will need a firmware. In my case it is mainly the QMK. This module activate all the needed options to use `QMK` within NixOS.

### Server
