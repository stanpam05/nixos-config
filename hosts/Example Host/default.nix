# This is an example of a default.nix
{ config, pkgs, variables, ... }:

{
  
  # Importing hardware configuration and base modules
  imports = [

    # Always include your hardware configuration inside your host folder
    ./hardware-configuration.nix

    # Put core modules here 

  ];

  # Setting the time zone, keymap, internalization properties, user, and host name

  time.timeZone = variables.timezone;

  services.xserver.xkb = {
    layout = variables.keyboard.layout;
    variant = variables.keyboard.variant;
  };

  i18n.defaultLocale = variables.defaultLocale;

  i18n.extraLocaleSettings = {
    LC_ADDRESS = variables.defaultLocale;
    LC_IDENTIFICATION = variables.defaultLocale;
    LC_MEASUREMENT = variables.defaultLocale;
    LC_MONETARY = variables.defaultLocale;
    LC_NAME = variables.defaultLocale;
    LC_NUMERIC = variables.defaultLocale;
    LC_PAPER = variables.defaultLocale;
    LC_TELEPHONE = variables.defaultLocale;
    LC_TIME = variables.defaultLocale;
  };

  users.users.${variables.user.username} = {
    isNormalUser = true;
    description = variables.user.username;
    # Add user groups here, starts with networkmanager and wheel (sudo)
    extraGroups = [ "networkmanager" "wheel" ];
  };

  networking.hostName = variables.host.hostname;

  # ENABLING AND CONFIGURING ESSENTIAL SERVICES AND PACKAGES
  # USUALLY YOU DON'T NEED TO CHANGE ANYTHING PAST
  # THIS POINT...

  # Using systemd-boot EFI boot loader
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Enabling network manager
  networking.networkmanager.enable = true;

  # Enabling experimental features
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Allowing unfree packages
  nixpkgs.config.allowUnfree = true;

  # The typical warning in the default nixOS configuration.nix applies here,
  # DO NOT change this variable when you update nixOS until you have inspected
  # all changes it would make to your configuration and migrated your data accordingly
  system.stateVersion = "26.05";

}