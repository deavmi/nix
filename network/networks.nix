{ config, pkgs, ... }:

{
    imports = [
        # Numbers
        ./addresses.nix

        # Names
        ./dns.nix

        # Routing settings
        ./routing.nix

        # Tunnel settings
        ./tunnels.nix
    ];

    # General
    networking.hostName = "hostnameGoesHere";

    # Firewall
    networking.firewall.enable = false;

    # Enable IPv6 forwarding on all interfaces
    boot.kernel.sysctl."net.ipv6.conf.all.forwarding" = 1;
}