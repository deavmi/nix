# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports = [
      # Include the results of the hardware scan.
      ./hardware-configuration.nix

      # Bootloader settings
      ./boot.nix

      # Networking settings
      ./network/networks.nix

      # System services
      ./services.nix

      # Misc
      ./misc.nix
  ];

 

  # ; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.



  # The global useDHCP flag is deprecated, therefore explicitly set to false here.
  # Per-interface useDHCP will be mandatory in the future, so this generated config
  # replicates the default behaviour.
  networking.useDHCP = false;
  networking.interfaces.enp1s0.useDHCP = true;

  


  

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    sshfs
  ];


  # This value determines the NixOS release from which the default
  # settings for stateful data, like file locations and database versions
  # on your system were taken. It‘s perfectly fine and recommended to leave
  # this value at the release version of the first install of this system.
  # Before changing this value read the documentation for this option
  # (e.g. man configuration.nix or on https://nixos.org/nixos/options.html).
  system.stateVersion = "21.05"; # Did you read the comment?

  # Enable automatic upgrades
  system.autoUpgrade = {
    # Enable them
    enable = true;

    # Change this for desktop machines
    allowReboot = true;
  };

}
