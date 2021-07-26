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
        "0.africa.pool.ntp.org"
        "1.africa.pool.ntp.org"
        "2.africa.pool.ntp.org"
        "3.africa.pool.ntp.org"
    ];
}