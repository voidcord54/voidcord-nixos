# configuration.nix
{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix

      ./modules/apps.nix
      ./modules/boot.nix
      ./modules/networking.nix
      ./modules/sound.nix
      ./modules/time.nix
      ./modules/kde.nix

      ./modules/users/future.nix
    ];

  # Enable flake
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  system.stateVersion = "25.05"; # Did you read the comment?

}
