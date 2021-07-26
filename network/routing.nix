{ config, pkgs, ... }:

{
    # TODO: Add bird config here with /48s

    # Enable Bird2
    services.bird2.enable = true;

    # Bird configuration
    services.bird2.config = "Add";
}