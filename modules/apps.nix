{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
  	git
  	vscodium
    gnumake
  ];
}
