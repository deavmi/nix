{ config, pkgs, ... }:

{
    # Per-interface configuration
    networkings.interfaces = {
        eth0 = {
            ipv6 = {
                address = "fd00::1";
                prefixLength = 64;
            };
        };

        eth1 = {
            ipv6 = {
                address = "fd00::2";
                prefixLength = 64;
            };
        };
    };
}