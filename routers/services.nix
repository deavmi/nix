{ config, pkgs, ... }:

{
    # SSH server
    services.openssh.enable = true;
}