<p align="center"><img src="/img/logo.png" width="200"></p>
<h1 align="center">[ NixOS ]</h1>
<p align="center">My config files for all of my NixOS machines</p>

<p>I use a basic `configuration.nix` and add all modules I need for every machine. The modules are splitted in `server` and `basic` modules. The `server` modules provide webservices and webserver and the `basic` modules can be used for both local machines and servers.</p>

<p align="center>"<img src="/img/dia.png"></p>

To add modules to the `configuration.nix` just use basic nix imports:

```nix
imports = [
    ./modules/zsh.nix
    ...
];
```

## Modules

### Basic



### Server
