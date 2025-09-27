{ config, pkgs, ... }:

{
  # Enable networking
  networking.networkmanager.enable = true;
  networking.hostName = "voidcord-nixos"; # Define your hostname.
}
