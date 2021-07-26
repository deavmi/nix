{ config, pkgs, ... }:

{
    # Set the nameservers
    networking.nameservers = [
        # IPv6 OpenNIC DNS servers
        "2a00:f826:8:2::195"
        "2a03:4000:4d:c92:88c0:96ff:fec6:b9d"
        "2001:67c:13e4:1::37"
        "2a03:4000:28:365::1"

        # IPv4 OpenNIC DNS servers
        "195.10.195.195"
        "194.36.144.87"
        "91.217.137.37"
        "94.16.114.254"
    ];
}