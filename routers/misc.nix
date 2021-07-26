{ config, pkgs, ... }:

{
    # Accounts configuration
    # Define a user account. Don't forget to set a password with ‘passwd’.
    users.users.deavmi = {
        isNormalUser = true;
        extraGroups = [ "wheel" ]; # Enable ‘sudo’ for the user.
    };

    # Timezone configuration
    time.timeZone = "Africa/Johannesburg";

    # Timeservers
    networking.timeServers = [
        server 0.africa.pool.ntp.org
        server 1.africa.pool.ntp.org
        server 2.africa.pool.ntp.org
        server 3.africa.pool.ntp.org
    ];
}